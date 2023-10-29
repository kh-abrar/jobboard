<?php

namespace App\Http\Controllers\Admins;

use App\Http\Controllers\Controller;
use App\Models\Category\Category;
use Illuminate\Http\Request;
use App\Models\Admin\Admin;
use App\Models\Job\Application;
use App\Models\Job\Job;
use Illuminate\Support\Facades\Hash;

class AdminsController extends Controller
{
    //
    public function viewLogin(){
        return view("admins.view-login");
    }

    public function checkLogin(Request $request){
        $remember_me = $request->has('remember_me') ? true : false;

        if (auth()->guard('admin')->attempt(['email' => $request->input("email"),
        "password" => $request->input("password")], $remember_me)){
             return redirect() -> route('admins.dashboard');
        }
        return redirect()->back()->with(['error' => 'error logging in']);
    }

    public function index(){

        $jobs = Job::select()->count();

        $categories = Category::select()->count();

        $admins = Admin::select()->count();

        $applications = Application::select()->count();
        
        return view("admins.index", compact('jobs', 'categories', 'admins', 'applications'));
    }

    public function admins(){
        $admins = Admin::all();

        return view('admins.all-admins', compact('admins'));
    }

    public function createAdmins(){

        return view("admins.create-admins");
    }

    public function storeAdmins(Request $request){

        $createAdmins = Admin::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        if($createAdmins){
            return redirect('admin/all-admins/')->with('create', 'Admin Created Successfully');
        }
    }

    
}
