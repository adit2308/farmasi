<?php 
include 'config.php';

$jenis=$_POST['jenis'];
$nama = $_POST["nama"];

	$sql = "SELECT * FROM barang WHERE jenis='$jenis' or nama='$nama'";
	$query = mysql_query($sql) or die (mysql_error());

	if(mysql_num_rows($query) > 0){
echo "<script>window.alert('GAGAL...Nama Barang Sudah Ada')
    window.location='barang.php'</script>";	
		// header("location: barang.php?hasil=gagal");

	} else {

// echo $nama;die;	
// date_default_timezone_set("Asia/jakarta");
$merk=$_POST['merk'];
$harga=$_POST['harga'];
$ukuran=$_POST['ukuran'];
$kecil=$_POST['kecil'];
$besar=$_POST['besar'];
$awal=$_POST['awal'];
// $masuk=$_POST['masuk'];
// $keluar=$_POST['keluar'];
$akhir=$_POST['awal'];
$exp1=$_POST['exp1'];
$exp2=$_POST['exp2'];
$status=$_POST['status'];

// $create=date('Y-m-d H:i:s');

mysql_query("insert into barang values('','$jenis','$nama','$merk','$harga','$ukuran','$kecil','$besar','$awal','$akhir','$exp1','$exp2','$status')");
		// $sql = "INSERT INTO barang(id, nama) VALUES('','$nama')";
		// $sql = "SELECT * FROM barang WHERE nama='$nama'";
		// $query = mysql_query($sql) or die (mysql_error());
echo "<script>window.alert('SUKSES, Data Sudah Tersimpan')
    window.location='barang.php'</script>";
		// header("location: barang.php?hasil=sukses");
	}


// mysql_query("insert into barang values('','$jenis','$nama','$ukuran','$kecil','$besar','$awal','$masuk','$keluar', '$akhir','$exp','$status')");
// echo "<script>window.alert('DATA SUDAH DISIMPAN')
    // window.location='barang.php'</script>";
// header("location:barang.php");

 ?>