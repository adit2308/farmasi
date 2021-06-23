<!DOCTYPE html>
<html>
<head>
	<title>LAPORAN BARANG KELUAR</title>
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
	header("Content-Disposition: attachment; filename=laporan barang keluar.xls");
	?>

	<center>
		<h1>LAPORAN BARANG KELUAR<br/> </h1>
	</center>

	<table border="1" align="center">
		<tr>
			<th>No</th>
			<th>Tanggal Keluar</th>
			<th>Nama Barang</th>
			<th>Jumlah Keluar</th>
		</tr>
		<?php
		include 'config.php'; 
		// koneksi database
		// $koneksi = mysqli_connect("localhost","root","","kios");

		// menampilkan data
		// $data = mysqli_query($koneksi,"select * from barang");
$query=mysql_query("select * from barang_keluar");
$no = 1;
while($d=mysql_fetch_array($query)){
		{
		?>
		<tr>
			<td align="center"><?php echo $no++; ?></td>
			<td align="center"><?php echo $d['tanggal']; ?></td>
			<td ><?php echo $d['nama']; ?></td>
			<td align="center"><?php echo $d['keluar']; ?></td>
		</tr>
		<?php 
		}
		}
		?>
	</table>
</body>
</html>