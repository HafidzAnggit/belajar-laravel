<!DOCTYPE html>
<html>
<head>
	<title>Tutorial Laravel #4 : Passing Data Controller Ke View Laravel - www.malasngoding.com</title>
</head>
<body>

	<h1>Biodata Dosen</h1>
	<p>Nama : {{ $nama }}</p>
    <p>Mata Pelajaran :</p>
	<ul> 
		@foreach($matkul as $m) 
		<li>{{ $m }}</li> 
		@endforeach		
	</ul>

</body>
</html>