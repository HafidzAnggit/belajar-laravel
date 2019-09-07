<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DosenController extends Controller
{
    public function index(){
        $nama = "Hafizh Anggit"; 
    	$matkul = ["MTCNA","CyOps","CCNA Security"]; 
    	return view('biodata',['nama' => $nama , 'matkul' => $matkul]);
    }
}
