<?php
if(isset($_GET['pesan'])){
    if($_GET['pesan']=="gagal"){
        echo "<div class = 'alert alert-danger alert-dismissible fade show' role = 'alert'>ISBN sudah ada!</div>";
    }
    if($_GET['pesan']=="isbn"){
        echo "<div class='alert alert-danger alert-dismissible fade show' role = 'alert'>ISBN harus 13 angka!</div>";
    }
}
?>
<br>
<br>
<br>
<div class="container">
    <form action="book/controller/savebookscontroller.php" method="POST" enctype="multipart/form-data">
        <div class="form-group">
            <label for="namabuku">Nama Buku</label>
            <input type="text" class="form-control" id="namabuku" name="bookname" required>
        </div>
        <div class="form-group">
            <label for="isbn">ISBN</label>
            <input type="text" class="form-control" id="isbn" name="isbn" minlength="13" maxlength="13" required>
        </div>
        <div class="form-group">
            <label for="namapengarang">Nama Pengarang</label>
            <input type="text" class="form-control" id="namapengarang" name="writer" minlength="13" required>
        </div>
        <div class="form-group">
            <label for="harga">Harga</label>
            <input type="number" class="form-control" id="harga" name="price" minlength="13" required>
        </div>
        <div class="form-group">
            <label for="tebalbuku">Tebal Buku</label>
            <input type="text" class="form-control" id="tebalbuku" name="thickness" minlength="13" required>
        </div>
        <div class="form-group">
            <label for="deskripsi">Deskripsi Buku</label>
            <textarea class="form-control" id="deskripsi" rows="5" name="description" minlength="13" required></textarea>
        </div>
        <input class="form-control" type="file" name="logo" accept="image/*" required>
        <a href="index.php?pilih=home" class="text-dark fw-bold">Kembali</a>
        <button type="submit" class="btn btn-primary m-2">Submit</button>
    </form>
</div>
<br>