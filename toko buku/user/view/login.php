<?php 
	if(isset($_GET['pesan'])){
		if($_GET['pesan']=="gagal"){
			echo "<div class = 'alert alert-danger alert-dismissible fade show' role = 'alert'>Username dan Password tidak sesuai !</div>";
		}
		else if ($_GET['pesan']=="reg"){
			echo "<div class = 'alert alert-info alert-dismissible fade show' role = 'alert'>Register Berhasil</div>";
		}
	}
	?>
 
	<div class="container container-md mt-5 ">
		<h1 class=" text-xl-center ">Silahkan login</h1>
 
		<form action="user/controller/logincontrol.php" method="post">
			<label>Username</label>
			<input type="text" name="user" class="form-control my-2" placeholder="Username ..">
 
			<label>Password</label>
			<input type="password" name="pass" class="form-control my-2" placeholder="Password ..">
 
			<input type="submit" class="btn btn-primary p-2 my-2 w-100" value="LOGIN">
			<label>Tidak punya akun? Register</label>
			<button type="submit" class="btn btn-primary p-2 mt-2 w-100" formaction="index.php?pilih=login&m=register">REGISTER</button>
		</form>
		
	</div>
