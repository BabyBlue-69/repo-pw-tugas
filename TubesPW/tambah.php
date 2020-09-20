<?php
session_start();

if( !isset($_SESSION['username']) ){
	header("Location: login.php");
	exit;
}

require 'functions.php';

if( isset($_POST["tambah"])){
	if ( tambah($_POST) > 0) {
		echo "<script>
				alert('data berhasil ditambahkan!');
				document.location.href = 'index.php';
			</script>";
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Form Tambah Data Mobil</title>
</head>
<body>
	<h3>Form Tambah Data Mobil</h3>


	<form method="post" action="">
		<ul>
			<li>
				<label>Nama </label><br>
				<input type="text" name="Nama" required maxlength="11">
			</li>
			<li>
				<label>Mesin </label><br>
				<input type="text" name="Mesin" required>
			</li>
			<li>
				<label>Fitur </label><br>
				<input type="text" name="Fitur" required>
			</li>
			<li>
				<label>Warna </label><br>
				<input type="text" name="Warna" required>
			</li>
			<li>
				<label>Gambar</label><br>
				<input type="text" name="Gambar" required>
			</li>
			<li>
				<button type="submit" name="tambah">Tambah Data</button>
				<button><a href="index.php">Batal</a></button>
			</li>
		</ul>
	</form>
</body>
</html>