
<?php 

include 'config.php';
$tgl=$_POST['tgl'];
$nama=$_POST['nama'];
$masuk=$_POST['masuk'];
$keluar=$_POST['keluar'];

$dt=mysql_query("select * from barang where nama='$nama'");
$data=mysql_fetch_array($dt);
$akhir=$data['awal']+$masuk;
mysql_query("update barang set akhir='$akhir' where nama='$nama'");

$dt=mysql_query("select * from barang where nama='$nama'");
$data=mysql_fetch_array($dt);
$masuk=$data['masuk']+$masuk;
mysql_query("update barang set masuk='$masuk' where nama='$nama'");

$dt=mysql_query("select * from barang where nama='$nama'");
$data=mysql_fetch_array($dt);
$akhir=$data['awal']-$keluar;
mysql_query("update barang set jumlah='$akhir' where nama='$nama'");

// $dt=mysql_query("select * from barang where nama='$nama'");
// $data=mysql_fetch_array($dt);
// $masuk=$data['masuk']+$masuk;
// mysql_query("update barang set masuk='$masuk' where nama='$nama'");

// $modal=$data['modal'];
// $laba=$harga-$modal;
// $labaa=$laba*$jumlah;
// $total_harga=$harga*$jumlah;
mysql_query("insert into barang_masuk_keluar values('','$tgl','$nama','$masuk','$keluar')")or die(mysql_error());
header("location:barang_laku.php");

?>

// <?php 

// include 'config.php';
// $tgl=$_POST['tgl'];
// $nama=$_POST['nama'];
// $harga=$_POST['harga'];
// $jumlah=$_POST['jumlah'];

// $dt=mysql_query("select * from barang where nama='$nama'");
// $data=mysql_fetch_array($dt);
// $sisa=$data['jumlah']-$jumlah;
// mysql_query("update barang set jumlah='$sisa' where nama='$nama'");

// $modal=$data['modal'];
// $laba=$harga-$modal;
// $labaa=$laba*$jumlah;
// $total_harga=$harga*$jumlah;
// mysql_query("insert into barang_laku values('','$tgl','$nama','$jumlah','$harga','$total_harga','$labaa')")or die(mysql_error());
// header("location:barang_laku.php");

// ?>