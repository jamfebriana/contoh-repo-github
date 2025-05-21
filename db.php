<?php
$conn = mysqli_connect("localhost","root","","db_warungonline");

//check koneksi apabila gagal muncul pesan di bawah ini
if (mysqli_connect_errno()) {
    echo "Koneksi database gagal : " . mysqli_connect_error();
}