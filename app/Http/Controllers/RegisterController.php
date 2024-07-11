<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function store(Request $request) {
        $validatedData = $request->validate([
            'name' => 'required|max:255',
            'username' => 'required|unique:users|max:30',
            'email' => 'required|unique:users|email:dns',
            'password' => 'required|max:10'
        ]);

        User::create($validatedData);

        return redirect('/')->with('success', 'Registration successfully! Please login');

    }
}
