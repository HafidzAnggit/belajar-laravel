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

//route default laravel
Route::get('/', function () {
    return view('welcome');
});


//route blog pert8
Route::get('/blog', 'BlogController@home');
Route::get('/blog/tentang', 'BlogController@tentang');
Route::get('/blog/kontak', 'BlogController@kontak');


//route gado - gado 1 - 7 malasngoding.com
// Route::get('halo', function () { //membuat return string dalam route langsung
// 	return "Halo, Selamat datang di tutorial laravel www.malasngoding.com";
// });
// Route::get('dosen', 'DosenController@index'); //url, controller Dosen ||memanggil return string dalam controller


//route CRUD
Route::get('/pegawai', 'PegawaiController@index'); //url, controller Dosen || menampilkan user yang ada
Route::get('/pegawai/create', 'PegawaiController@create'); //url, controller Dosen || membuat user baru
Route::post('/pegawai/store', 'PegawaiController@store'); //url, controller Pegawai || proses penambahan
Route::get('/pegawai/edit/{id}', 'PegawaiController@edit'); //mengirimkan data id yang ingin di edit ke controller
Route::post('/pegawai/update', 'PegawaiController@update');

// Route::get('/formulir', 'PegawaiController@formulir');
// Route::post('/formulir/proses', 'PegawaiController@proses');

