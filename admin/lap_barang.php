<!DOCTYPE html>
<html>
<head>
	<title>LAPORAN STOK BARANG FARMASI ALL JENIS/NAMA</title>
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
		<h1>LAPORAN STOK BARANG FARMASI ALL JENIS/NAMA<br/></h1>
		<h2>BULAN :		
<!-- <select name="bulan" class="form-control" onchange="blnFunction()">
<option value="" >Pilih Bulan</option>
<option value="01">Januari</option>
<option value="02">Februari</option>
<option value="03">Maret</option>
<option value="04">April</option>
<option value="05">Mei</option>
<option value="06">Juni</option>
<option value="07">Juli</option>
<option value="08">Agustus</option>
<option value="09">September</option>
<option value="10">Oktober</option>
<option value="11">November</option>
<option value="12">Desember</option>
</select> -->

<select  name="bulan" onchange="myFunction()">
  <option value="Januari">Januari</option>
  <option value="BMW">BMW</option>
  <option value="Mercedes">Mercedes</option>
  <option value="Volvo">Volvo</option>
</select>

TAHUN :
<select name="tahun" class="form-control" onchange="thnFunction()">

<?php
//$bln='Mei';
//$thn= '2021';
$mulai= date('Y') - 50;
for($i = $mulai;$i<$mulai + 100;$i++){
    $sel = $i == date('Y') ? ' selected="selected"' : '';
    echo '<option value="'.$i.'"'.$sel.'>'.$i.'</option>';
}
?>
</select>
</h2>

	</center>
	<center>
		<a target="_blank" href="lap_barang_cetak.php">EXPORT KE EXCEL</a>
	</center>

	<table border="1" align="center">
		<tr>
			<th id="bln_tb" colspan='7' align="center">
				BULAN :
			</th>
			<th id="thn_tb" colspan='8' align="center">
				TAHUN :
			</th>
		</tr>
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

	<!-- <script type="text/javascript">
	var bln=document.querySelector('select[name="bulan"]');
	// var bln=document.querySelector('select[name="bulan"]').value;
	// console.log(bln.options[bln.selectedIndex].text);	
	</script> -->

	<!-- <script>	
		function blnFunction() {
			// alert('ok');
			console.log(bln);
		// bln.toggleAttribute("selected")
		}
	</script> -->

<script src="script.js"></script>

</body>
</html>