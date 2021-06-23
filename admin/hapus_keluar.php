
<?php 
include 'config.php';

$id=$_GET['id'];
// $masuk=$_GET['masuk'];
$nama=$_GET['nama'];
// $tgl=$_GET['tgl'];	
// $akhir=$_GET['akhir'];

$c=mysql_query("select keluar from barang_keluar where id='$id'");
$d=mysql_fetch_array($c);
$kembalikan_d=$d['keluar'];

// mysql_query("delete from barang_laku where id='$id'");

// echo "update barang set masuk='$kembalikan_d' where id='$id'";die;

// $a=mysql_query("select masuk from barang where nama='$nama'");
// $b=mysql_fetch_array($a);
// $kembalikan_b=$b['masuk'];
// $c=mysql_query("update barang set masuk='$kembalikan' where nama='$nama'");
// mysql_query("delete from barang_laku where id='$id'");

// echo "update barang set masuk='$kembalikan_b' where nama='$nama'";die;

$dt=mysql_query("select * from barang where nama='$nama'");
$data=mysql_fetch_array($dt);
// $masuk=$data['masuk']+$masuk;
$akhir=$data['akhir']+$data['keluar'];
$keluar=$data['keluar']-$d['keluar'];
// mysql_query("update barang set masuk='$kembalikan_d' where id='$id'");
// mysql_query("update barang set masuk='$masuk' akhir='$akhir' masuk='$kembalikan_d' where id='$id' nama='$nama'");
mysql_query("update barang set keluar='$keluar',akhir='$akhir' where nama='$nama'");
mysql_query("delete from barang_keluar where id='$id'");
// echo "update barang set keluar='$kembalikan_d',keluar='$keluar',akhir='$akhir' where nama='$nama'";die;

// $id=$_GET['id'];
// $nama=$_GET['nama'];
// $masuk=$_GET['masuk'];
// $akhir=$_GET['akhir'];
// $keluar=$_GET['keluar'];


// mysql_query("delete from barang_masuk where id='$id'");

// $a=mysql_query("select * from barang_masuk where id='$id'");
// $b=mysql_fetch_array($a);
// $c=mysql_query("select masuk from barang_masuk where nama='$nama' id='$id'");
// $d=mysql_fetch_array($c);
// $kembalikan=$b['masuk'];
// mysql_query("update barang set akhir='$kembalikan' where nama='$nama'");
// echo "update barang_masuk set masuk='$masuk' where id='$id'";die;

header("location:barang_keluar.php");

 ?>
 
<!-- // <?php 

$id=$_POST['id'];
$nama=$_POST['nama'];
$tgl=$_POST['tgl'];
$masuk=$_POST['masuk'];

mysql_query("update barang_masuk set nama='$nama', tanggal='$tgl', masuk='$masuk' where id='$id'");
mysql_query("update barang set masuk='$masuk' where nama='$nama'");

$dt=mysql_query("select * from barang where nama='$nama'");
$data=mysql_fetch_array($dt);
// $masuk=$data['masuk']+$masuk;
$akhir=$data['awal']+$data['masuk']-$data['keluar'];
mysql_query("update barang set akhir='$akhir' where nama='$nama'");



// include 'config.php';
// $id=$_GET['id'];
// $jumlah=$_GET['jumlah'];
// $nama=$_GET['nama'];

// $a=mysql_query("select jumlah from barang where nama='$nama'");
// $b=mysql_fetch_array($a);
// $kembalikan=$b['jumlah']+$jumlah;
// $c=mysql_query("update barang set jumlah='$kembalikan' where nama='$nama'");
// mysql_query("delete from barang_laku where id='$id'");
// header("location:barang_laku.php");

//  ?> -->