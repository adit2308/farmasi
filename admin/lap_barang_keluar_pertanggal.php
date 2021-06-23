<!DOCTYPE html>
<html>
<head>
	<title>LAPORAN STOK BARANG KELUAR PER TANGGAL</title>
</head>
<body>
	<style type="text/css">
	body{
		font-family: sans-serif;
	}
	table{
		margin: 20px auto;
		border-collapse: collapse;
	}
	table th,
	table td{
		border: 1px solid #3c3c3c;
		padding: 3px 8px;

	}
	a{
		background: blue;
		color: #fff;
		padding: 8px 10px;
		text-decoration: none;
		border-radius: 2px;
	}
	</style>
	
	<center>
		<h1>LAPORAN STOK BARANG KELUAR PER TANGGAL<br/></h1>
	</center>
	<center>
		<?php 
	if(isset($_GET['tanggal'])){
		$tanggal=mysql_real_escape_string($_GET['tanggal']);
		$tg=mysql_query("select * from barang_keluar where tanggal like '$tanggal'");
		// echo $tanggal;die;
		// die;
		?>
		<a target="_blank" href="lap_barang_keluar_pertanggal_cetak.php?tanggal=<?= $tanggal; ?>">EXPORT KE EXCEL</a>
	</center>

	<table border="1" align="center">
		<tr>
			<th>No</th>
			<th>Tanggal Keluar</th>
			<th>Nama Barang</th>
			<th>Keluar</th>
		</tr>

		<?php
		include 'config.php';
 
	if(isset($_GET['tanggal'])){
		$tanggal=mysql_real_escape_string($_GET['tanggal']);
		$tg=mysql_query("select * from barang_keluar where tanggal like '$tanggal'");
		?>
		<?php
	}else{
		// echo "string";
$tanggal=mysql_real_escape_string($_GET['tanggal']);
// echo $cari;
 // die;
// $cari='BHP';
		$tg=mysql_query("select * from barang_keluar where tanggal like '$tanggal'");

	}
	$no=1;
	while($b=mysql_fetch_array($tg))
// echo $tanggal;die;
	{

		?>
		<tr>
			<td align="center"><?php echo $no++ ?></td>
			<td align="center"><?php echo $b['tanggal']; ?></td>
			<td ><?php echo $b['nama']; ?></td>
			<td align="center"><?php echo $b['keluar']; ?></td>
		</tr>
		<?php 
		}
	}
		?>
	</table>
</body>
</html>