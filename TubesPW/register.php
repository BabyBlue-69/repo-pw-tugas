<?php

require 'functions.php';

if(isset($_POST['register'])){
    if(register($_POST) > 0) {
    	echo 
    	"<script>
    		alert('Successful Registration!');
    		document.location.href = 'login.php';
    	</script>";
    }
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Registrasi Form</title>
</head>
<body>
	<h3>Registrasi Form</h3>
	<form action="" method="post">
		<ul>
			<li>
				<label>Username :</label><br>
				<input type="text" name="username" required>
			</li>
			<li>
				<label>Password :</label><br>
				<input type="password" name="password1" required>
			</li>
			<li>
				<label>Confirm Password :</label><br>
				<input type="password" name="password2" required>
			</li>
			<li>
				<button type="submit" name="register">Registrasi</button>
				<a href="login.php"><button>Batal</button></a>
			</li>
		</ul>
	</form>
</body>
</html>