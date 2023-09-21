<?php

namespace App\Http\Controllers\Jobs;

use App\Http\Controllers\Controller;
use App\Models\Job\Job;
use Illuminate\Http\Request;

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

        return view('jobs.single', compact('job', 'relatedJob', 'relatedJobCount'));
    }
}
