<?php 
include 'header.php';
?>

<h3><span class="glyphicon glyphicon-briefcase"></span>  Edit Barang</h3>
<a class="btn" href="barang.php"><span class="glyphicon glyphicon-arrow-left"></span>  Kembali</a>

<?php
$id_brg=mysql_real_escape_string($_GET['id']);

$det=mysql_query("select * from barang where id='$id_brg'")or die(mysql_error());
while($d=mysql_fetch_array($det)){
	?>					
	<form action="update.php" method="post">
		<table class="table">
			<tr>
				<td></td>
				<td><input type="hidden" name="id" value="<?php echo $d['id'] ?>"></td>
			</tr>
			<tr>
				<td>Jenis Barang</td>
				<td><!-- <input type="text" class="form-control" name="jenis" value="<?php echo $d['jenis'] ?>"> -->
					<select name="jenis" class="form-control">
                			<option value="<?php echo $d['jenis'] ?>"><?php echo $d['jenis'] ?></option>
                			<option value="BHP">BHP</option>
							<option value="BHP COVID-19 (HIBAH)">BHP COVID-19 (HIBAH)</option>
							<option value="SYSMEX XN 1000">SYSMEX XN 1000</option>
							<option value="SYSMEX XS">SYSMEX XS</option>
							<option value="KOAGULASI CA 50">KOAGULASI CA 50</option>
							<option value="HEMATOLOGI LAINNYA">HEMATOLOGI LAINNYA</option>
							<option value="COBAS E 411">COBAS E 411</option>
							<option value="ENSEVAL MEDIKA PRIMA">ENSEVAL MEDIKA PRIMA</option>
							<option value="REAGEN DONASI (HIBAH)">REAGEN DONASI (HIBAH)</option>
							<option value="IMUNOSEROLOGI LAINNYA">IMUNOSEROLOGI LAINNYA</option>
							<option value="COBAS C 311">COBAS C 311</option>
							<option value="DIMENSION EXL">DIMENSION EXL</option>
							<option value="KALIBRATOR">KALIBRATOR</option>
							<option value="RAPID LAB 348 EX">RAPID LAB 348 EX</option>
							<option value="EASYLITE NaK PLUS">EASYLITE NaK PLUS</option>
							<option value="CLINITEC NOVUS">CLINITEC NOVUS</option>
							<option value="KLINIK RUTIN LAINNYA">KLINIK RUTIN LAINNYA</option>
							<option value="GeneXpert Cepheid">GeneXpert Cepheid</option>
							<option value="Vitek 2 Compact">Vitek 2 Compact</option>
							<option value="BacT/ALERT 3D 60">BacT/ALERT 3D 60</option>
							<option value="MIKROBIOLOGI">MIKROBIOLOGI</option>
                     </select>
				</td>
			</tr>
			<tr>
				<td>Nama Barang</td>
				<td><input type="text"  class="form-control" name="nama" value="<?php echo $d['nama'] ?>"></td>
			</tr>
			<tr>
				<td>Merk Barang</td>
				<td><input type="text"  class="form-control" name="merk" value="<?php echo $d['merk'] ?>"></td>
			</tr>
			<tr>
				<td>Harga Barang</td>
				<td><input type="text"  class="form-control" name="harga" value="<?php echo $d['harga'] ?>"></td>
			</tr>
			<tr>
				<td>Ukuran</td>
				<td><input type="text" class="form-control" name="ukuran" value="<?php echo $d['ukuran'] ?>"></td>
			</tr>
			<tr>
				<td>Satuan Kecil</td>
				<td><input type="text" class="form-control" name="kecil" value="<?php echo $d['kecil'] ?>"></td>
			</tr>
			<tr>
				<td>Satuan Besar</td>
				<td><input type="text" class="form-control" name="besar" value="<?php echo $d['besar'] ?>"></td>
			</tr>
			<tr>
				<td>Saldo Awal</td>
				<td><input type="text" class="form-control" name="awal" value="<?php echo $d['awal'] ?>"></td>
			</tr>
			<tr>
				<td>Masuk</td>
				<td><input type="text" class="form-control" readonly="readonly" name="masuk" value="<?php echo $d['masuk'] ?>"></td>
			</tr>
			<tr>
				<td>Keluar</td>
				<td><input type="text" class="form-control" readonly="readonly" name="keluar" value="<?php echo $d['keluar'] ?>"></td>
			</tr>
			<tr>
				<td>Saldo Akhir</td>
				<td><input type="text" class="form-control" readonly="readonly" name="akhir" value="<?php echo $d['akhir'] ?>"></td>
			</tr>			
			<tr>
				<td>Exp-Date 1</td>
				<td><input name="exp1" type="text" class="form-control" id="exp1" autocomplete="off" value="<?php echo $d['exp1'] ?>"></td>
			</tr>
			<tr>
				<td>Exp-Date 2</td>
				<td><input name="exp2" type="text" class="form-control" id="exp2" autocomplete="off" value="<?php echo $d['exp2'] ?>"></td>
			</tr>
			<tr>
				<td>Status Pemesanan</td>
				<td><input type="text" class="form-control" name="status" value="<?php echo $d['status'] ?>"></td>
			</tr>
				<td></td>
				<td><input type="submit" class="btn btn-info" value="Simpan"></td>
			</tr>
		</table>
	</form>
	<?php 
}
?>
 <script type="text/javascript">
        $(document).ready(function(){

            $('#exp1').datepicker({dateFormat: 'yy/mm/dd'});
            $('#exp2').datepicker({dateFormat: 'yy/mm/dd'});

        });
    </script>
<?php 
include 'footer.php';

?>