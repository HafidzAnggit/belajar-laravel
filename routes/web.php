<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('halo', function () { //membuat return string dalam route langsung
	return "Halo, Selamat datang di tutorial laravel www.malasngoding.com";
});

Route::get('blog', function () { //url, view(blog)
	return view('blog');
});

Route::get('dosen', 'DosenController@index'); //url, controller Dosen ||memanggil return string dalam controller
Route::get('/pegawai/{nama}', 'PegawaiController@index'); //url, controller Dosen ||memanggil return string dalam controller
Route::get('/formulir', 'PegawaiController@formulir');
Route::post('/formulir/proses', 'PegawaiController@proses');