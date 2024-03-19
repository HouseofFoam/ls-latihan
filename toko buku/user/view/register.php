<?php 
	if(isset($_GET['pesan'])){
		if($_GET['pesan']=="gagal"){
			echo "<div class = 'alert alert-danger alert-dismissible fade show' role = 'alert'>Username telah dipakai</div>";
		}
	}
	?>
 
	<div class="container container-md mt-5 ">
		<h1 class=" text-xl-center ">Silahkan Registrasi</h1>
 
		<form action="user/controller/registercontrol.php" method="post" enctype="multipart/form-data">
			<label>Username</label>
			<input type="text" name="user" class="form-control my-2" placeholder="Username .." minlength="3" required>
 
			<label>Password</label>
			<input type="password" name="pass" class="form-control my-2" placeholder="Password .." minlength = "3" required>

            <label>Nama Panjang</label>
			<input type="text" name="nama" class="form-control my-2" placeholder="Nama Panjang .." minlength="3" required>

            <label>Alamat</label>
			<input type="text" name="alamat" class="form-control my-2" placeholder="Alamat .." minlength="3" required>

            <label>Pilih Level</label>
            <select class="form-control my-2" name="level">
                <option value="1">Pelanggan</option>
                <option value="2">Publisher</option>
            </select>
            <label for="img">Tambah Gambar</label>
            <input class = "form-control" type="file" name="logo" accept="image/*" required>

			<input type="submit" class="btn btn-primary my-2 w-100 " value="REGISTER">
		</form>
		
	</div>