<?php

$conn = mysqli_connect('localhost', 'root', '', 'tubes');

	function query($query) {
		global $conn; // IMPORTANT!
		$result = mysqli_query($conn, $query);

		$rows = [];
		while($row = mysqli_fetch_assoc($result)) {
			$rows[] = $row;
		}
	return $rows;
	}

	function tambah($data) {
		global $conn;

		$Nama = htmlspecialchars($data['Nama']);
		$Mesin = htmlspecialchars($data['Mesin']);
		$Fitur = htmlspecialchars($data['Fitur']);
		$Warna = htmlspecialchars($data['Warna']);
		$Gambar = htmlspecialchars($data['Gambar']);

		$query = "INSERT INTO mobil
		VALUES('', '$Nama', '$Mesin', '$Fitur', '$Warna', '$Gambar')";

		mysqli_query($conn, $query);

		return mysqli_affected_rows($conn);
	}

	function hapus($id) {
		global $conn;
		mysqli_query($conn, "DELETE FROM mobil WHERE id = $id");

		return mysqli_affected_rows($conn);
	}

	function ganti($data) {
		global $conn;

		$id = $data['id'];
		$Nama = htmlspecialchars($data['Nama']);
		$Mesin = htmlspecialchars($data['Mesin']);
		$Fitur = htmlspecialchars($data['Fitur']);
		$Warna = htmlspecialchars($data['Warna']);
		$Gambar = htmlspecialchars($data['Gambar']);

		$query = "UPDATE mobil SET 
				 Nama 		= '$Nama',
				 Mesin 		= '$Mesin',
				 Fitur 		= '$Fitur',
				 Warna	= '$Warna',
				 Gambar = '$Gambar'
				 WHERE id = $id";

		mysqli_query($conn, $query);

		return mysqli_affected_rows($conn);
	}

function register($data) {
		global $conn;

		$username = $data['username'];
		$password1 = $data['password1'];
		$password2 = $data['password2'];

		$cek_user = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");

		if(mysqli_num_rows($cek_user) > 0) {
			echo 
			"<script>
				alert('Username already exist!');
				document.location.href = 'register.php';
			</script>";
			return false;
		}

		if($password1 != $password2) {
			echo 
			"<script>
				alert('Password confirmation not match!');
				document.location.href = 'register.php';
			</script>";
			return false;
		}

		$password = password_hash($password1, PASSWORD_DEFAULT);

		$query = "INSERT INTO user VALUES
					(' ','$username','$password')";
		mysqli_query($conn, $query);

		return mysqli_affected_rows($conn);
	}

?>