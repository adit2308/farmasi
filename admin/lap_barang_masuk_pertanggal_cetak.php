<!DOCTYPE html>
<html>
<head>
	<title>LAPORAN STOK BARANG MASUK PER TANGGAL</title>
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
	header("Content-Disposition: attachment; filename=laporan stok barang masuk per tanggal.xls");
	?>

	<center>
		<h1>LAPORAN STOK BARANG MASUK PER TANGGAL<br/> </h1>
	</center>

	<table border="1" align="center">
		<tr>
			<th>No</th>
			<th>Tanggal Masuk</th>
			<th>Nama Barang</th>
			<th>Masuk</th>
		</tr>
		<?php
		include 'config.php';

		if(isset($_GET['tanggal'])){
		$tanggal=mysql_real_escape_string($_GET['tanggal']);
		$tg=mysql_query("select * from barang_masuk where tanggal like '$tanggal'");
		?>
		<?php
	}else{
		// echo "string";
$cari=mysql_real_escape_string($_GET['tanggal']);
// echo $cari;
 // die;
// $cari='BHP';
		$tg=mysql_query("select * from barang_masuk where tanggal like '$tanggal'");
		
	}
	$no=1;
	while($b=mysql_fetch_array($tg)){

		?>
		<tr >
			<td align="center"><?php echo $no++ ?></td>
			<td align="center"><?php echo $b['tanggal']; ?></td>
			<td ><?php echo $b['nama']; ?></td>
			<td align="center"><?php echo $b['masuk']; ?></td>
		</tr>
		<?php 
		}
		// }
		?>
	</table>
</body>
</html>