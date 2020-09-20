<?php 
session_start();

if(isset($_SESSION['username'])) {
	header("Location: index.php");
	exit;
}

require 'functions.php';

	if (isset($_POST['login'])) {
		$username = $_POST['username'];
		$password = $_POST['password'];

		$cek_user = mysqli_query($conn, "SELECT * FROM user WHERE username = '$username'");

		if(mysqli_num_rows($cek_user) == 1) {
			$user = mysqli_fetch_assoc($cek_user);
			if(password_verify($password, $user['password'])) {
				$_SESSION['username'] = $username;
				header('Location: index.php');
				exit;
			} else {
				$error = 'Password salah, harap memasukan password yang benar';
			}
		} else {
			// failed login
			$error = 'Username tidak dikenali, daftar terlebih dahulu';
		}
	}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
</head>
<body>
	<h2>Login</h2>

	<?php if (isset($error)) : ?>
		<p><?= $error; ?></p>
	<?php endif; ?>

	<form action="" method="post">
		<ul>
			<li>
				<label>Username : </label><br>
				<input type="text" name="username">
			</li>
			<li>
				<label>Password : </label><br>
				<input type="password" name="password">
			</li>
			<br>
			<li>
				<button type="submit" name="login">Login</button>
				<button type="submit"><a href="register.php">Register</a></button>
			</li>
		</ul>
	</form>

	

</body>
</html>