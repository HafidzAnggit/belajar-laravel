<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProcessingController extends Controller
{
    public function input(){
        return view('input');
    }
    public function process(Request $request){
        $messages = [
            'required' => ':attribute wajib diisi !',
            'min' => ':attribute harus diisi minimal :min karakter !',
            'max' => ':attribute harus diisi maksimal :max karakter !',
        ];
        
        $this->validate($request,[
            'nama' => 'required|min:5|max:20',
            'pekerjaan' => 'required',
            'usia' => 'required|numeric'
        ],$messages);
        return view('process',['data'=>$request]);
    }
}
