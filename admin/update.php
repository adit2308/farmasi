<?php 
include 'config.php';
$id=$_POST['id'];
$jenis=$_POST['jenis'];
$nama=$_POST['nama'];
$merk=$_POST['merk'];
$harga=$_POST['harga'];
$ukuran=$_POST['ukuran'];
$kecil=$_POST['kecil'];
$besar=$_POST['besar'];
$awal=$_POST['awal'];
$masuk=$_POST['masuk'];
$keluar=$_POST['keluar'];
$akhir=$awal+$masuk-$keluar;
$exp1=$_POST['exp1'];
$exp2=$_POST['exp2'];
$status=$_POST['status'];
// $update=date('y-m-d H:m:s')

// $dt=mysql_query("select * from barang where id='$id'");
// $data=mysql_fetch_array($dt);
// $akhir=$awal+$masuk-$keluar;
// mysql_query("update barang set akhir='$akhir' where id='$id'");

mysql_query("update barang set jenis='$jenis', nama='$nama', merk='$merk', harga='$harga', ukuran='$ukuran', kecil='$kecil', besar='$besar', awal='$awal', masuk='$masuk', keluar='$keluar', akhir='$akhir', exp1='$exp1', exp2='$exp2', status='$status' where id='$id'");
// mysql_query("update barang set jenis='$jenis', nama='$nama', ukuran='$ukuran', kecil='$kecil', besar='$besar', awal='$awal', masuk='$masuk', keluar='$keluar', akhir='$akhir', exp='$exp', ' status='$status', create='$create', update='$update where id='$id'");
// mysql_query("update barang set jenis='$jenis', nama='$nama', ukuran='$ukuran', kecil='$kecil', besar='$besar', awal='$awal', masuk='$masuk', keluar='$keluar', akhir='$akhir', exp='$exp', ' status='$status', create_time='$create_time', update_time='$update_time' where id='$id'");
echo "<script>window.alert('SUKSES, Data Berhasil Di Edit')
    window.location='barang.php'</script>";
// header("location:barang.php");

?>