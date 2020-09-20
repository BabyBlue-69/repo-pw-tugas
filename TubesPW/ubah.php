<?php
session_start();

if(!isset($_SESSION['username']) ){
	header("Location: login.php");
	exit;
}

require 'functions.php';

$id = $_GET['id'];
$m = query("SELECT * FROM mobil WHERE id = $id")[0];


if( isset($_POST['ubah'])){
	if (ubah($_POST)> 0) {
		echo "<script>
				alert('data berhasil diganti!');
				document.location.href = 'index.php';
			</script>";
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Form Ubah Data Mobil</title>
</head>
<body>
	<h3>Form Ubah Data Mobil</h3>


	<form method="post" action="">
		<input type="hidden" name="id" value="<?= $m['id']; ?>">
		<ul>
			<li>
				<label>Nama </label><br>
				<input type="text" name="Nama" required  value="<?= $m['Nama']; ?>">
			</li>
			<li>
				<label>Mesin </label><br>
				<input type="text" name="Mesin" required value="<?= $m['Mesin']; ?>">
			</li>
			<li>
				<label>Fitur </label><br>
				<input type="text" name="Fitur" required value="<?= $m['Fitur']; ?>">
			</li>
			<li>
				<label>Warna </label><br>
				<input type="text" name="Warna" required value="<?= $m['Warna']; ?>">
			</li>
			<li>
				<label>Gambar </label><br>
				<input type="text" name="Gambar" required value="<?= $m['Gambar']; ?>">
			</li>
			<li>
				<button type="submit" name="ubah">Ubah Data</button>
				<button><a href="index.php">Batal</a></button>
			</li>
		</ul>
	</form>
</body>
</html>