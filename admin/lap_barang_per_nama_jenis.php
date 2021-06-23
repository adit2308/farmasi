<!DOCTYPE html>
<html>
<head>
	<!-- <title>LAPORAN STOK BARANG FARMASI PER NAMA/JENIS</title> -->
	<title>LAPORAN STOK BARANG FARMASI</title>
	<!-- <title>LAPORAN BARANG PERSEDIAAN PER</title> -->
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
		<!-- <h1>LAPORAN STOK BARANG FARMASI PER NAMA/JENIS<br/></h1> -->
		<h1>LAPORAN STOK BARANG FARMASI<br/></h1>
		<!-- <h1>LAPORAN BARANG PERSEDIAAN PER<br/></h1> -->
	</center>
	<center>
		<?php 
	if(isset($_GET['cari'])){
		$cari=mysql_real_escape_string($_GET['cari']);
		$brg=mysql_query("select * from barang where nama like '$cari' or jenis like '$cari'");
		// echo $cari;
		// die;
		?>
		<a target="_blank" href="lap_barang_per_nama_jenis_cetak.php?cari=<?= $cari; ?>">EXPORT KE EXCEL</a>
	</center>

	<table border="1" align="center">
		<tr>
			<th>No</th>
			<th>Jenis Barang</th>
			<th>Nama Barang</th>
			<th>Merk Barang</th>
			<th>Harga</th>
			<th>Ukuran</th>
			<th>Satuan Kecil</th>
			<th>Satuan Besar</th>
			<th>Saldo Awal</th>
			<th>Masuk</th>
			<th>Keluar</th>
			<th>Saldo Akhir</th>
			<th>Exp Date 1</th>
			<th>Exp Date 2</th>
			<th>Status Pemesanan</th>
		</tr>

		<?php
		include 'config.php';
 
	if(isset($_GET['cari'])){
		$cari=mysql_real_escape_string($_GET['cari']);
		$brg=mysql_query("select * from barang where nama like '$cari' or jenis like '$cari'");
		?>
		<?php
	}else{
		// echo "string";
$cari=mysql_real_escape_string($_GET['cari']);
// echo $cari;
 // die;
// $cari='BHP';
		$brg=mysql_query("select * from barang where nama like '$cari' or jenis like '$cari'");
		
	}
	$no=1;
	while($b=mysql_fetch_array($brg)){

		?>
		<tr>
			<td align="center"><?php echo $no++ ?></td>
			<td align="center"><?php echo $b['jenis']; ?></td>
			<td ><?php echo $b['nama']; ?></td>
			<td ><?php echo $b['merk']; ?></td>
			<td>Rp.<?php echo number_format($b['harga']) ?>,-</td>
			<td><?php echo $b['ukuran']; ?></td>
			<td align="center"><?php echo $b['kecil']; ?></td>
			<td align="center"><?php echo $b['besar']; ?></td>
			<td align="center"><?php echo $b['awal']; ?></td>
			<td align="center"><?php echo $b['masuk']; ?></td>
			<td align="center"><?php echo $b['keluar']; ?></td>
			<td align="center"><?php echo $b['akhir']; ?></td>
			<td align="center"><?php echo $b['exp1']; ?></td>
			<td align="center"><?php echo $b['exp2']; ?></td>
			<td align="center"><?php echo $b['status']; ?></td>
		</tr>
		<?php 
		}
	}
		?>
	</table>
</body>
</html>