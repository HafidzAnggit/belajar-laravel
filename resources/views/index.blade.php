@extends('master')


@section('content')
    <section class="content-header">
      <h1>
        Data Pegawai
        <small>Universitas Ahmad Dahlan</small>
        <a class="btn btn-primary" href="/pegawai/create"> + Add</a>
      </h1>
      
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Pegawai</a></li>
        <li class="active">Data pegawai</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          

          <div class="box">
            <!-- <div class="box-header">
              <h3 class="box-title">Data Table With Full Features</h3>
            </div> -->
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>#</th>
                  <th>Nama Lengkap</th>
                  {{-- <th>Jabatan</th>
                  <th>Umur</th> --}}
                  <th>Alamat</th> 
                  <th>Opsi</th>
                </tr>
                </thead>
                <tbody>
                {{-- ketika ingin menampilkan 1 data view, langsung menggunakan variable $pegawai->alamat --}}
                <?php $number=1; ?>
                @foreach($pegawai as $p)
                <tr>
                    <td>{{ $number++ }}</td>
                    <td>{{ $p->nama }}</td>
                    <td>{{ $p->alamat }}</td>
                    <td>
                        <!-- mengalihkan halaman ke route sambil mengirimkan data id data yang ingin di edit. -->
                        <a href="/pegawai/edit/{{ $p->id }}" class="glyphicon glyphicon-edit btn btn-info"></a>
                        |
                        <a href="/pegawai/delete/{{ $p->id }}" class="glyphicon glyphicon-trash btn btn-danger"></a>
                    </td>
                </tr>
                @endforeach
                </tbody>
                <tfoot>                
                </tfoot>
              </table>
            
            <!-- /.box-body -->
          </div>    
          </div>
          </section>

<!-- page script -->

 @endsection

          