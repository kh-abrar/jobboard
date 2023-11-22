@extends('layouts.admin')
@section('content')
<div class="row">
    <div class="col">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title mb-4 d-inline">Job Applications</h5>

          <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">CV</th>
                <th scope="col">Email</th>
                <th scope="col">View Jobs</th>
                <th scope="col">Job Title</th>
                <th scope="col">Company</th>
                <th scope="col">Delete</th>
              </tr>
            </thead>
            <tbody>
                @foreach ($displayApps as $displayApp)
                  <tr>
                    <th scope="row">1</th>
                    <td><a class="btn btn-success" href="{{asset('assets/cvs/'.$displayApp->cv.'')}}">CV</a></td>
                    <td>{{$displayApp->email}}</td>
                    <td><a class="btn btn-success" href="{{route('single.job', $displayApp->job_id)}}">Go To Job</a></td>
                    <td>{{$displayApp->job_title}}</td>
                     <td>{{$displayApp->company}}</td>
                     <td><a href="#" class="btn btn-danger  text-center ">Delete</a></td>
                  </tr>
                @endforeach
              
            </tbody>
          </table> 
        </div>
      </div>
    </div>
  </div>
  @endsection