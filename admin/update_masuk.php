<?php 
include 'config.php';
$id=$_POST['id'];
// $jenis=$_POST['jenis'];
// $nama=$_POST['nama'];
// $ukuran=$_POST['ukuran'];
// $kecil=$_POST['kecil'];
// $besar=$_POST['besar'];
// $awal=$_POST['awal'];
// $masuk=$_POST['masuk'];
// $keluar=$_POST['keluar'];
// $akhir=$_POST['awal'];
// $exp=$_POST['exp'];
// $status=$_POST['status'];
$nama=$_POST['nama'];
$tgl=$_POST['tgl'];
$masuk=$_POST['masuk'];

// mysql_query("update barang set jenis='$jenis', nama='$nama', ukuran='$ukuran', kecil='$kecil', besar='$besar', awal='$awal', masuk='$masuk', keluar='$keluar', akhir='$akhir', exp='$exp', status='$status' where id='$id'");
mysql_query("update barang_masuk set nama='$nama', tanggal='$tgl', masuk='$masuk' where id='$id'");
mysql_query("update barang set masuk='$masuk' where nama='$nama'");

$dt=mysql_query("select * from barang where nama='$nama'");
$data=mysql_fetch_array($dt);
// $masuk=$data['masuk']+$masuk;
$akhir=$data['awal']+$data['masuk']-$data['keluar'];
mysql_query("update barang set akhir='$akhir' where nama='$nama'");
// echo "update barang_masuk set nama='$nama', tanggal='$tgl', masuk='$masuk' where id='$id'";die;
// echo $masuk;die;
// $dt=mysql_query("select * from barang where nama='$nama'");
// $data=mysql_fetch_array($dt);
// $masuk=$data['masuk']+$masuk;
// mysql_query("update barang set masuk='$masuk' where nama='$nama'");

// $dt=mysql_query("select * from barang where nama='$nama'");
// $data=mysql_fetch_array($dt);
// // $masuk=$data['masuk']+$masuk;
// $akhir=$data['awal']+$data['masuk']-$data['keluar'];
// mysql_query("update barang set akhir='$akhir' where nama='$nama'");

header("location:barang_masuk.php");

?>