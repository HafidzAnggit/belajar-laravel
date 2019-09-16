<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
// use Illuminate\Support\Facades\DB; //query builder

//memanggil model pegawai
use App\Pegawai;

class PegawaiController extends Controller
{
    public function index(){
         // mengambil data dari table pegawai menggunakan Query builder
        // $pegawai = DB::table('pegawai')->get(); 
        
        // mengambil data pegawai menggunakan eloquent
        $pegawai = Pegawai::all();
        // $pegawai = Pegawai::first(); //memanggil 1 data pegawai yang ke-1
 
    	// mengirim(passing) data pegawai ke view index
    	return view('index',['pegawai' => $pegawai]);
    }

    public function create(){
        // menambah data table pegawai
       return view('tambah');
    }

       // method untuk insert data ke table pegawai
    public function store(Request $request)
    {
        // insert data ke table pegawai
        DB::table('pegawai')->insert([
            'nama' => $request->nama,            
            'alamat' => $request->alamat
        ]);
        // alihkan halaman ke halaman pegawai
        return redirect('/pegawai');
    }

    // method untuk edit data pegawai
    public function edit($id)
    {
        // mengambil data pegawai berdasarkan id yang dipilih
        $pegawai = DB::table('pegawai')->where('id',$id)->get();
        // passing data pegawai yang didapat ke view edit.blade.php
        return view('edit',['pegawai' => $pegawai]);

    }
    
    // update data pegawai
    public function update(Request $request)
    {
        // update data pegawai
        DB::table('pegawai')->where('id',$request->id)->update([
            'nama' => $request->nama,            
            'alamat' => $request->alamat
        ]);
        // alihkan halaman ke halaman pegawai
        return redirect('/pegawai');
    }

    // method untuk hapus data pegawai
    public function delete($id)
    {
        // menghapus data pegawai berdasarkan id yang dipilih
        DB::table('pegawai')->where('id',$id)->delete();
            
        // alihkan halaman ke halaman pegawai
        return redirect('/pegawai');
    }

    public function formulir(){
        return view('formulir');
    }
    
    public function proses(Request $request){
        $nama = $request->input('nama');
     	$alamat = $request->input('alamat');
        return "Nama : ".$nama.", Alamat : ".$alamat;
    }


}
