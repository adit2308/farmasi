<?php include 'header.php'; ?>

<h3><span class="glyphicon glyphicon-briefcase"></span>  Stok Barang Farmasi</h3>
<button style="margin-bottom:20px" data-toggle="modal" data-target="#myModal" class="btn btn-info col-md-2"><span class="glyphicon glyphicon-plus"></span>Tambah Barang</button>
<br/>
<?php 
// $periksa=mysql_query("select * from barang where akhir <=3");
// while($q=mysql_fetch_array($periksa)){	
	// if($q['akhir']<=3){	
		?>	
		<script>
		// 	$(document).ready(function(){
		// 		$('#pesan_sedia').css("color","red");
		// 		$('#pesan_sedia').append("<span class='glyphicon glyphicon-asterisk'></span>");
		// 	});
		// </script>
		 <?php
		// echo "<div style='padding:5px' class='alert alert-warning'><span class='glyphicon glyphicon-info-sign'></span> Stok  <a style='color:red'>". $q['nama']."</a> yang tersisa sudah kurang dari 3 . silahkan pesan lagi !!</div>";	
	// }
// }
// ?>
<?php 
$per_hal=50;
$jumlah_record=mysql_query("SELECT COUNT(*) from barang");
$jum=mysql_result($jumlah_record, 0);
$halaman=ceil($jum / $per_hal);
$page = (isset($_GET['page'])) ? (int)$_GET['page'] : 1;
$start = ($page - 1) * $per_hal;
?>
<div class="col-md-12">
	<table class="col-md-2">
		<tr>
			<td>Jumlah Record</td>		
			<td><?php echo $jum; ?></td>
		</tr>
		<tr>
			<td>Jumlah Halaman</td>	
			<td><?php echo $halaman; ?></td>
		</tr>
	
	<tr>
		<td>Total Saldo Awal</td>
		<td>			
		<?php 
		
			$x=mysql_query("select sum(awal) as total from barang");	
			$xx=mysql_fetch_array($x);			
			echo "<b>". number_format($xx['total'])."</b>";		
		?>
		</td>
	</tr>
	<tr>
		<td>Total Masuk</td>
		<td>			
		<?php 
		
			$x=mysql_query("select sum(masuk) as total from barang");	
			$xx=mysql_fetch_array($x);			
			echo "<b>". number_format($xx['total'])."</b>";		
		?>
		</td>
	</tr>
	<tr>
		<td>Total Keluar</td>
		<td>			
		<?php 
		
			$x=mysql_query("select sum(keluar) as total from barang");	
			$xx=mysql_fetch_array($x);			
			echo "<b>". number_format($xx['total'])."</b>";		
		?>
		</td>
	</tr>
	<tr>
		<td>Total Saldo Akhir</td>
		<td>			
		<?php 
		
			$x=mysql_query("select sum(akhir) as total from barang");	
			$xx=mysql_fetch_array($x);			
			echo "<b>". number_format($xx['total'])."</b>";		
		?>
		</td>
	</tr>
	</table>	
</div>

	<ul class="pagination">			
			<?php 
			for($x=1;$x<=$halaman;$x++){
				?>
				<li><a href="?page=<?php echo $x ?>"><?php echo $x ?></a></li>
				<?php
			}
			?>	
	</ul>
	<ul>
	<div class="input-group col-md-3 col-md-offset-9">
		<a style="margin-bottom:10px" href="lap_barang.php" target="_blank" class="btn btn-default pull-right"><span class='glyphicon glyphicon-print'></span>Cetak Semua Barang Farmasi</a>
	</div>

	<form action="cari_act.php" method="get">
	<div class="input-group col-md-3 col-md-offset-9">
		<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-search"></span></span>
		<input type="text" class="form-control" placeholder="Cari Jenis / Nama Barang di sini .." aria-describedby="basic-addon1" name="cari">	
	</div>
	</form>
	</ul>

<table class="table table-hover">
	<tr>
		<th class="col-md-0">NO</th>
		<th class="col-md-1">JENIS BARANG</th>
		<th class="col-md-2">NAMA BARANG</th>
		<th class="col-md-2">MERK BARANG</th>
		<th class="col-md-1">HARGA</th>
		<th class="col-md-2">UKURAN</th>
		<th class="col-md-1">SATUAN KECIL</th>
		<th class="col-md-1">SATUAN BESAR</th>
		<th class="col-md-0">SALDO AWAL</th>
		<th class="col-md-0">MASUK</th>
		<th class="col-md-0">KELUAR</th>
		<th class="col-md-0">SALDO AKHIR</th>
		<th class="col-md-1">EXP-DATE 1</th>
		<th class="col-md-1">EXP-DATE 2</th>
		<th class="col-md-0">STATUS PEMESANAN</th>
		<!-- <th class="col-md-1">Sisa</th>		 -->
		<th class="col-md-2">Opsi</th>
	</tr>
	<?php 
	if(isset($_GET['cari'])){
		$cari=mysql_real_escape_string($_GET['cari']);
		$brg=mysql_query("select * from barang where nama like '$cari' or jenis like '$cari'");
		// echo $cari;die;
		?>

		<a style="margin-bottom:10px" href="lap_barang_per_nama_jenis.php?cari=<?= $cari; ?>" target="_blank" class="btn btn-default pull-right"><span class='glyphicon glyphicon-print'></span>  Cetak Sesuai Jenis / Nama Barang</a>
	<?php
	}else{
		$brg=mysql_query("select * from barang limit $start, $per_hal ");
	}
	$no=1;
	while($b=mysql_fetch_array($brg)){

		?>
		<tr>
			<td><?php echo $no++ ?></td>
			<td><?php echo $b['jenis'] ?></td>
			<td><?php echo $b['nama'] ?></td>
			<td><?php echo $b['merk'] ?></td>
			<td>Rp.<?php echo number_format($b['harga']) ?>,-</td>
			<td><?php echo $b['ukuran'] ?></td>
			<td><?php echo $b['kecil'] ?></td>
			<td><?php echo $b['besar'] ?></td>
			<td><?php echo ($b['awal']) ?></td>
			<td><?php echo ($b['masuk']) ?></td>
			<td><?php echo ($b['keluar']) ?></td>
			<td><?php echo ($b['akhir']) ?></td>
			<!-- <td><?php echo ($b['akhir']=$b['awal']+$b['masuk']-$b['keluar'])
			?>
			</td> -->
			<!-- <td><?php echo date("d-m-Y", strtotime($b['exp1']))?></td> -->
			<td><?php echo ($b['exp1']) ?></td>
			<td><?php echo ($b['exp2']) ?></td>
			<td><?php echo ($b['status']) ?></td>
			<td>
				<a href="det_barang.php?id=<?php echo $b['id']; ?>" class="btn btn-info">Detail</a>
				<a href="edit.php?id=<?php echo $b['id']; ?>" class="btn btn-warning">Edit</a>
				<a onclick="if(confirm('Apakah anda yakin ingin menghapus data ini ??')){ location.href='hapus.php?id=<?php echo $b['id']; ?>' }" class="btn btn-danger">Hapus</a>
			</td>
		</tr>		
		<?php 
	}
	?>
	<!-- <tr>
		<td colspan="3">Total Saldo Awal</td>
		<td>			
		<?php 
		
			$x=mysql_query("select sum(awal) as total from barang");	
			$xx=mysql_fetch_array($x);			
			echo "<b>". number_format($xx['total'])."</b>";		
		?>
		</td>
	</tr> -->
	<!-- <tr>
		<td colspan="3">Total Masuk</td>
		<td>			
		<?php 
		
			$x=mysql_query("select sum(masuk) as total from barang");	
			$xx=mysql_fetch_array($x);			
			echo "<b>". number_format($xx['total'])."</b>";		
		?>
		</td>
	</tr> -->
	<!-- <tr>
		<td colspan="3">Total Keluar</td>
		<td>			
		<?php 
		
			$x=mysql_query("select sum(keluar) as total from barang");	
			$xx=mysql_fetch_array($x);			
			echo "<b>". number_format($xx['total'])."</b>";		
		?>
		</td>
	</tr> -->
	<!-- <tr>
		<td colspan="3">Total Saldo Akhir</td>
		<td>			
		<?php 
		
			$x=mysql_query("select sum(akhir) as total from barang");	
			$xx=mysql_fetch_array($x);			
			echo "<b>". number_format($xx['total'])."</b>";		
		?>
		</td>
	</tr> -->
</table>
		<!-- <ul class="pagination">			
			<?php 
			for($x=1;$x<=$halaman;$x++){
				?>
				<li><a href="?page=<?php echo $x ?>"><?php echo $x ?></a></li>
				<?php
			}
			?>
		</ul> -->
<!-- modal input -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Tambah Barang Baru</h4>
			</div>
			<div class="modal-body">
				<form action="tmb_brg_act.php" method="post">
					<div class="form-group">
						<label>JENIS BARANG</label>
   	         			<select name="jenis" class="form-control" required>
                			<option value="" selected>Pilih Jenis Barang</option>
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
					</div>
					<div class="form-group">
						<label>NAMA BARANG</label>
						<input name="nama" type="text" class="form-control" placeholder="Nama Barang" required>
					</div>
					<div class="form-group">
						<label>MERK BARANG</label>
						<input name="merk" type="text" class="form-control" placeholder="Merk Barang">
					</div>
					<div class="form-group">
						<label>HARGA</label>
						<input name="harga" type="text" class="form-control" placeholder="Harga">
					</div>
					<div class="form-group">
						<label>UKURAN</label>
						<input name="ukuran" type="text" class="form-control" placeholder="Ukuran">
					</div>
					<div class="form-group">
						<label>SATUAN KECIL</label>
						<input name="kecil" type="text" class="form-control" placeholder="Satuan Kecil">
					</div>
					<div class="form-group">
						<label>SATUAN BESAR</label>
						<input name="besar" type="text" class="form-control" placeholder="Satuan Besar">
					</div>	
					<div class="form-group">
						<label>SALDO AWAL</label>
						<input name="awal" type="text" class="form-control" placeholder="Saldo Awal">
					</div>	

					<!-- ============================================================================ -->
					<!-- <div class="form-group">
						<label>MASUK</label>
						<input name="masuk" type="text" class="form-control">
					</div> -->																	
					<!-- <div class="from-group">
						<label>KELUAR</label>
						<input name="keluar" type="text" class="form-control">
					</div> -->
					<!-- <div class="from-group">
						<label>SALDO AKHIR</label>
						<input name="akhir" type="text" class="form-control">
					</div> -->
					<!-- <div class="from-group">
						<label>EXP-DATE</label>
						<input name="exp" type="date" class="form-control">
					</div> -->
					<!-- ============================================================================ -->

					<div class="from-group">
						<label>EXP-DATE 1</label>
						<?php date_default_timezone_set("Asia/Jakarta")?>
						<input name="exp1" type="text" class="form-control" id="exp1" autocomplete="off" placeholder="Exp-Date 1">
					</div>
					<div class="from-group">
						<label>EXP-DATE 2</label>
						<input name="exp2" type="text" class="form-control" id="exp2" autocomplete="off" placeholder="Exp-Date 2">
					</div>
					<div class="from-group">
						<label>STATUS PEMESANAN</label>
						<input name="status" type="text" class="form-control" placeholder="Status Pemesanan">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
					<input type="submit" class="btn btn-primary" value="Simpan">
				</div>
			</form>
		</div>
	</div>
</div>

<script type="text/javascript">
        $(document).ready(function(){

            $('#exp1').datepicker({dateFormat: 'dd-mm-yy'});
            $('#exp2').datepicker({dateFormat: 'dd-mm-yy'});

        });
</script>

<?php 
include 'footer.php';

?>