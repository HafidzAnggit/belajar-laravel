@extends('master')

@section('content')
<!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        General Form Elements
        <small>Preview</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Forms</a></li>
        <li class="active">General Elements</li>
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
            <form action="/process" method="post" role="form">
            {{ csrf_field() }}            
              <div class="box-body">
                <div class="form-group">
                  <label for="nama">Nama Lengkap</label>
                  <input type="text" class="form-control" name="nama" value="{{ old('nama')}}" id="exampleInputName" placeholder="Your Name">
                </div>
                <div class="form-group">
                  <label for="pekerjaan">Pekerjaan</label>
                  <input type="text" class="form-control" name="pekerjaan" value="{{ old('pekerjaan')}}" id="exampleInputPekerjaan" placeholder="your jobs">
                </div>
                <div class="form-group">
                  <label for="usia">Usia</label>
                  <input type="text" class="form-control" name="usia" value="{{ old('usia')}}" id="exampleInputUsia">
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
                <button type="submit" class="btn btn-primary" value="Proses">Submit</button>
              </div>
            </form>
          </div>
          <!-- /.box -->
          
        </div>
        <!--/.col (left) -->
        
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
@endsection