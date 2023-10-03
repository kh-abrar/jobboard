<?php

namespace App\Http\Controllers\Jobs;

use App\Http\Controllers\Controller;
use App\Models\Job\Job;
use App\Models\Job\JobSaved;
use App\Models\Job\Application;
use App\Models\Category\Category;
use App\Models\Job\Search;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class JobsController extends Controller
{
    //
    public function single($id){

        $job =Job::find($id);

        //Getting related Jobs

        $relatedJob = Job::where('category', $job->category)
        ->where('id', '!=', $id)
        ->take(5)
        ->get();

        $relatedJobCount = Job::where('category', $job->category)
        ->where('id', '!=', $id)
        ->count();

        $categories = Category::all();

        //Save Job
        if(auth()->user()){
            $savedJob = JobSaved::where('job_id', $id)
            ->where('user_id', Auth::user()->id)
            ->count();
    
            // Verifying if user applied to a job
            $appliedJob = Application::where('user_id', Auth::user()->id)
            ->where('job_id', $id)
            ->count();


            return view('jobs.single', compact('job', 'relatedJob', 'relatedJobCount', 'savedJob', 'appliedJob', 'categories'));
        }else{
            return view('jobs.single', compact('job', 'relatedJob', 'relatedJobCount', 'categories'));
        }

    }

    public function saveJob(Request $request){
        $saveJob = JobSaved::create([
            'job_id' => $request->job_id,
            'user_id' => $request->user_id,
            'job_image' => $request->job_image,
            'job_title' => $request->job_title,
            'job_region' => $request->job_region,
            'job_type' => $request->job_type,
            'company' => $request->company
        ]);

        if($saveJob){
            return redirect('/jobs/single/'.$request->job_id.'')->with('save', 'Job Saved Successfully');
        }
    }

    public function jobApply(Request $request){

        if($request->cv == 'No CV'){
            return redirect('/jobs/single/'.$request->job_id.'')->with('apply', 'Upload your CV first in the profile page');
        }else{
            $applyJob = Application::create([
                'cv' => Auth::user()->cv,
                'job_id' => $request->job_id,
                'user_id' => Auth::user()->id,
                'job_image' => $request->job_image,
                'job_title' => $request->job_title,
                'job_region' => $request->job_region,
                'company' => $request->company,
                'job_type' => $request->job_type,
            ]);

            if($applyJob){
                return redirect('/jobs/single/'.$request->job_id.'')->with('applied', 'You applied to this job successfully!');
            }
        } 
    }

    public function search(Request $request){

        Request()->validate([
            "job_title" => "required",
            "job_region" => "required",
            "job_type" => "required",
        ]);

        Search::Create([
            "keyword" =>$request->job_title
        ]);

        $job_title = $request->get('job_title');
        $job_region = $request->get('job_region');
        $job_type = $request->get('job_type');

        $searches = Job::select()->where('job_title', 'like', "%$job_title%")
        ->where('job_region', 'like', "%$job_region%")
        ->where('job_type', 'like', "%$job_type%")
        ->get();

        return view('jobs.search', compact('searches'));
    }
}
