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

        return view('jobs.single', compact('job'));
    }
}
