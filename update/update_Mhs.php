<?php
include('../../conf/config.php');
$id         = $_POST['id'];
$npm        = $_POST['npm'];
$nama       = $_POST['nama'];
$tanggal      = $_POST['tanggal'];
$alamat     = $_POST['alamat'];
$orangtua       = $_POST['orangtua'];
$nomerhp      = $_POST['nomerhp'];
$gen        = $_POST['gen'];
$kelas      = $_POST['kelas'];
$usia      = $_POST['usia'];
$image=$_FILES["image"]["name"];

//Nama Foto//
$nama_file  = $_FILES['foto']['name'];
echo $nama_file;
$nama_doc = $NoSurat.'.pdf';
//Lokasi Foto//
$file_tmp   = $_FILES['foto']['tmp_name'];
move_uploaded_file($file_tmp,'../doc-surat-keluar/'.$nama_doc);
$query = mysqli_query($koneksi,"UPDATE tb_mhs SET npm='$npm',nama='$nama',tanggal='$tanggal',alamat='$alamat',orangtua='$orangtua',nomerhp='$nomerhp',gen='$gen',kelas='$kelas',usia='$usia',image='$image' WHERE id = '$id'");
header('Location: ../?page=data-Mhs');
?>