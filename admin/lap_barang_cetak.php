<!-- <?php

require('../vendor/autoload.php');

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$spreadsheet = new Spreadsheet();
$sheet = $spreadsheet->getActiveSheet();
$sheet->setCellValue('A1', 'Hello World !');

$writer = new Xlsx($spreadsheet);
$writer->save('hello world.xlsx');
?> -->

<!DOCTYPE html>
<html>
<head>
	<title>LAPORAN STOK BARANG FARMASI ALL</title>
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

	<?php
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=laporan barang farmasi all.xls");
	?>

	<center>
		<h1>LAPORAN STOK BARANG FARMASI ALL<br/> </h1>
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
		// koneksi database
		// $koneksi = mysqli_connect("localhost","root","","kios");

		// menampilkan data
		// $data = mysqli_query($koneksi,"select * from barang");
$query=mysql_query("select * from barang");
$no = 1;
while($d=mysql_fetch_array($query)){
		{
		?>
		<tr>
			<td align="center"><?php echo $no++; ?></td>
			<td align="center"><?php echo $d['jenis']; ?></td>
			<td ><?php echo $d['nama']; ?></td>
			<td ><?php echo $d['merk']; ?></td>
			<td>Rp.<?php echo number_format($d['harga']) ?>,-</td>
			<td><?php echo $d['ukuran']; ?></td>
			<td align="center"><?php echo $d['kecil']; ?></td>
			<td align="center"><?php echo $d['besar']; ?></td>
			<td align="center"><?php echo $d['awal']; ?></td>
			<td align="center"><?php echo $d['masuk']; ?></td>
			<td align="center"><?php echo $d['keluar']; ?></td>
			<td align="center"><?php echo $d['akhir']; ?></td>
			<td align="center"><?php echo $d['exp1']; ?></td>
			<td align="center"><?php echo $d['exp2']; ?></td>
			<td align="center"><?php echo $d['status']; ?></td>
		</tr>
		<?php 
		}
		}
		?>
	</table>
</body>
</html>