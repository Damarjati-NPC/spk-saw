<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SubController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\SiswaController;
use App\Http\Controllers\ProsesController;
use App\Http\Controllers\KriteriaController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PenilaianController;

Route::get('/', function () {
    return view('LoginRegis.login');
})->name('login')->middleware('guest');

Route::get('/register', function () {
    return view('LoginRegis.register');
})->name('register');

Route::get('/dashboard', [DashboardController::class, 'index'])->middleware('auth');

Route::post('/register', [RegisterController::class, 'store']);
Route::post('/login', [LoginController::class, 'login']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/siswa', [SiswaController::class, 'index']);
Route::get('/siswa/tambah', [SiswaController::class, 'create']);

Route::resource('/siswa', SiswaController::class);

Route::resource('/kriteria', KriteriaController::class);
Route::resource('sub', SubController::class);
Route::resource('/penilaian', PenilaianController::class);
Route::resource('proses', ProsesController::class);