@extends('master')

@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
	<h1>
	  Form Pendaftaran Dosen
	  <small>Universitas Ahmad Dahlan</small>
	</h1>
	<ol class="breadcrumb">
	  <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
	  <li><a href="#">Pegawai</a></li>
	  <li class="active">Edit Dosen</li>
	</ol>
  </section>

  <!-- Main content -->
  <section class="content">
	<div class="row">
	  <!-- left column -->
	  <div class="col-md-6">
		<!-- general form elements -->
		<div class="box box-primary">
		  
		  <!-- /.box-header -->
		  <!-- form start -->
		  @foreach ($pegawai as $p)
		  <form action="/pegawai/update" method="post" role="form">
		  {{ csrf_field() }}            
			<div class="box-body">
			  <div class="form-group">
				<label for="id">Id</label>
				<input type="text" class="form-control" name="id" value="{{ $p->id }}" disabled>
			  </div>
			  
			  <div class="form-group">
				<label for="nama">Nama Lengkap</label>
				<input type="text" required="required" class="form-control" name="nama" value="{{ $p->nama }}" id="exampleInputName" placeholder="Your Name">
			  </div>

			  <div class="form-group">
				<label for="alamat">Alamat</label>
				<input type="textarea" class="form-control" name="alamat" value="{{ $p->alamat }}" id="exampleInputAddress">
			  </div>
			  {{-- menampilkan error validasi --}}
			  @if (count($errors) > 0)
				  <div class="alert alert-danger">
					  <ul>
					  @foreach ($errors->all() as $error)
						  <li>{{ $error }}</li>
					  @endforeach
					  </ul>
				  </div>
			  @endif
			</div>
			<!-- /.box-body -->

			<div class="box-footer">
			  <button type="submit" class="btn btn-primary" value="Simpan Data">Submit</button>
			</div>
		  </form>
		  @endforeach
		</div>
		<!-- /.box -->
		
	  </div>
	  <!--/.col (left) -->
	  
	</div>
	<!-- /.row -->
  </section>
  <!-- /.content -->
@endsection