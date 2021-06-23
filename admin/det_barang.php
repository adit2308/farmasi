<?php 
include 'header.php';
?>

<h3><span class="glyphicon glyphicon-briefcase"></span>  Detail Barang</h3>
<a class="btn" href="barang.php"><span class="glyphicon glyphicon-arrow-left"></span>  Kembali</a>

<?php
$id_brg=mysql_real_escape_string($_GET['id']);


$det=mysql_query("select * from barang where id='$id_brg'")or die(mysql_error());
while($d=mysql_fetch_array($det)){
	?>					
	<table class="table">
		<tr>
			<td>Jenis Barang</td>
			<td><?php echo $d['jenis'] ?></td>
		</tr>
		<tr>
			<td>Nama Barang</td>
			<td><?php echo $d['nama'] ?></td>
		</tr>
		<tr>
			<td>Merk Barang</td>
			<td><?php echo $d['merk'] ?></td>
		</tr>
		<tr>
			<td>Harga Barang</td>
			<td>Rp.<?php echo number_format($d['harga']) ?>,-</td>
		</tr>
		<tr>
			<td>Ukuran</td>
			<td><?php echo $d['ukuran'] ?></td>
		</tr>
		<tr>
			<td>Satuan Kecil</td>
			<td><?php echo $d['kecil'] ?></td>
		</tr>
		<tr>
			<td>Satuan Besar</td>
			<td><?php echo $d['besar'] ?></td>
		</tr>
		<tr>
			<td>Saldo Awal</td>
			<td><?php echo $d['awal'] ?></td>
		</tr>
		<tr>
			<td>Masuk</td>
			<td><?php echo $d['masuk'] ?></td>
		</tr>
		<tr>
			<td>Keluar</td>
			<td><?php echo $d['keluar'] ?></td>
		</tr>
		<tr>
			<td>Saldo Akhir</td>
			<td><?php echo $d['akhir'] ?></td>
		</tr>
		<tr>
			<td>Exp-Date 1</td>
			<td><?php echo $d['exp1'] ?></td>
		</tr>
		<tr>
			<td>Exp-Date 2</td>
			<td><?php echo $d['exp2'] ?></td>
		</tr>
		<tr>
			<td>Status Pemesanan</td>
			<td><?php echo $d['status'] ?></td>
		</tr>
	</table>
	<?php 
}
?>
<?php include 'footer.php'; ?>