<?php
include('../../conf/config.php');
$npm          = $_POST['npm'];
$nama           = $_POST['nama'];
$tanggal          = $_POST['tanggal'];
$alamat      = $_POST['alamat'];
$orangtua         = $_POST['orangtua'];
$nomerhp          = $_POST['nomerhp'];
$gen        = $_POST['gen'];
$kelas  = $_POST['kelas'];
$usia  = $_POST['usia'];
$image=$_FILES["doc"]["name"];
$akte=$_FILES["akte"]["nama"];

//echo $image;
$ext =  end(explode(".", $image));
$foto =  $npm.'.'.$ext;
$ext2 =  end(explode(".", $image));
$akte =  $npm.'.'.$ext2;
//Lokasi Foto//
$file_tmp   = $_FILES['doc']['tmp_name'];
move_uploaded_file($file_tmp,'../foto/'.$foto);
$file_tmp2   = $_FILES['akte']['tmp_name'];
move_uploaded_file($file_tmp2,'../akte/'.$akte);

$query = mysqli_query($koneksi,"INSERT INTO tb_mhs(npm,nama,tanggal,alamat,orangtua,nomerhp,gen,kelas,usia,image,akte) 
VALUES('$npm','$nama','$tanggal','$alamat','$orangtua','$nomerhp','$gen','$kelas','$usia','$foto','$akte')");

mysqli_close($koneksi);
// header('Location: ../?page=data-Mhs');
echo "<script>window.location.href = '../?page=data-Mhs'</script>";
?>
