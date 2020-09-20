<?php 

session_start();

if( !isset($_SESSION['username']) ) {
	header("Location: login.php");
	exit;
}

require 'functions.php';
$mobil = query("SELECT * FROM mobil");
 ?>

<!DOCTYPE html>
<html>
<head>
	<title>Daftar Mobil</title>
</head>
<body>
	<a href="logout.php">Logout</a>
	<h3>Daftar Mobil</h3>

	<button>
	<a href="tambah.php">Tambah Data Mobil</a>
	</button><br><br>
	<input type="text" name="keyword">
	<button type="submit" name="cari" id="tombol-cari">cari</button>
	<br>
	<br>



	<table border="1" cellspacing="0" cellpadding="10">
		<tr>
			<th>Id</th>
			<th>Nama</th>
			<th>Mesin</th>
			<th>Fitur</th>
			<th>Warna</th>
			<th>Gambar</th>
			<th>Informasi</th>
		</tr>
		<?php $i=1 ?>
		<?php foreach ($mobil as $m): ?>
		<tr>
			
			<td><?= $m['id']; ?></td>
			<td><?= $m['Nama']; ?></td>
			<td><?= $m['Mesin']; ?></td>
			<td><?= $m['Fitur']; ?></td>
			<td><?= $m['Warna']; ?></td>
			<td><img src="g/<?= $m['Gambar']; ?>" width="200"></td>

			<td>
				<a href="ubah.php?id=<?= $m['id'] ?>">Ganti</a> | <a href="hapus.php">Hapus</a>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>

</body>
</html>