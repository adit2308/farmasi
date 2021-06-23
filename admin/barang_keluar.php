<?php include 'header.php';	?>

<h3><span class="glyphicon glyphicon-briefcase"></span>  Stok Barang Keluar</h3>
<button style="margin-bottom:20px" data-toggle="modal" data-target="#myModal" class="btn btn-info col-md-2"><span class="glyphicon glyphicon-pencil"></span>  Entry</button>
<form action="" method="get">
	<div class="input-group col-md-5 col-md-offset-7">
		<span class="input-group-addon" id="basic-addon1"><span class="glyphicon glyphicon-calendar"></span></span>
		<select type="submit" name="tanggal" class="form-control" onchange="this.form.submit()">
			<option>Pilih tanggal ..</option>
			<?php 
			$pil=mysql_query("select distinct tanggal from barang_keluar order by tanggal desc");
			while($p=mysql_fetch_array($pil)){
				?>
				<option><?php echo $p['tanggal'] ?></option>
				<?php
			}
			?>			
		</select>
	</div>
</form>
<br/>

<?php 
$per_hal=100;
$jumlah_record=mysql_query("SELECT COUNT(*) from barang_keluar");
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
	</table>
	<a style="margin-bottom:10px" href="lap_barang_keluar.php" target="_blank" class="btn btn-default pull-right"><span class='glyphicon glyphicon-print'></span>  Cetak Semua Barang Keluar</a>
</div>

<?php 
if(isset($_GET['tanggal'])){
	$tanggal=mysql_real_escape_string($_GET['tanggal']);
	$tg="lap_barang_keluar_pertanggal.php?tanggal=$tanggal";
	?>
	<a style="margin-bottom:10px" href="<?php echo $tg ?>" target="_blank" class="btn btn-default pull-right"><span class='glyphicon glyphicon-print'></span>  Cetak Sesuai Tanggal</a>
	<?php
}else{
	$tg="lap_barang_keluar.php";
}
?>

<br/>
<?php 
if(isset($_GET['tanggal'])){
	$tanggal=mysql_real_escape_string($_GET['tanggal']);
			$x=mysql_query("select sum(keluar) as total from barang_keluar where tanggal='$tanggal'");	
			$xx=mysql_fetch_array($x);			
			echo "<h4> Data Barang Keluar Pada Tanggal  <a style='color:blue'> ". $_GET['tanggal']."</a> Sejumlah <a style='color:blue'> ". number_format($xx['total'])."</a></h4>";
}
?>

	<tr>
		<td colspan="3">Total Barang Keluar</td>
		<td>			
		<?php 
		
			$x=mysql_query("select sum(keluar) as total from barang_keluar");	
			$xx=mysql_fetch_array($x);			
			echo "<b>". number_format($xx['total'])."</b>";		
		?>
		</td>
	</tr>

<table class="table">
	<tr>
		<th>No</th>
		<th>Tanggal Keluar</th>
		<th>Nama Barang</th>
		<th>Keluar</th>
		<!-- <th>Keluar</th> -->						
		<th>Opsi</th>
	</tr>
	<?php 
	if(isset($_GET['tanggal'])){
		$tanggal=mysql_real_escape_string($_GET['tanggal']);
		$tg=mysql_query("select * from barang_keluar where tanggal like '$tanggal' order by tanggal desc");
	}else{
		$tg=mysql_query("select * from barang_keluar order by tanggal desc");
	}
	$no=1;
	while($b=mysql_fetch_array($tg)){

		?>
		<tr>
			<td><?php echo $no++ ?></td>
			<td><?php echo $b['tanggal'] ?></td>
			<td><?php echo $b['nama'] ?></td>			
			<td><?php echo $b['keluar'] ?></td>
			<td>		
				<a href="edit_keluar.php?id=<?php echo $b['id']; ?>" class="btn btn-warning">Edit</a>
				<a onclick="if(confirm('Apakah anda yakin ingin menghapus data ini ??')){ location.href='hapus_keluar.php?id=<?php echo $b['id']; ?>&nama=<?php echo $b['nama']; ?>' }" class="btn btn-danger">Hapus</a>
			</td>
		</tr>

		<?php 
	}
	?>
</table>

<!-- modal input -->
<div id="myModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Tambah Barang Keluar
				</div>
				<div class="modal-body">				
					<form action="barang_keluar_act.php" method="post">
						<div class="form-group">
							<label>Tanggal Keluar</label>
							<?php date_default_timezone_set("Asia/Jakarta")?>
							<input name="tgl" type="text" class="form-control" id="tgl" autocomplete="off"  placeholder="Tanggal Keluar">
						</div>	
						<div class="form-group">
							<label>Nama Barang</label>								
							<select class="form-control" name="nama">
								<?php 
								$brg=mysql_query("select * from barang");
								while($b=mysql_fetch_array($brg)){
									?>	
									<option value="<?php echo $b['nama']; ?>"><?php echo $b['nama'] ?></option>
									<?php 
								}
								?>
							</select>

						</div>									
						<div class="form-group">
							<label>Keluar</label>
							<input name="keluar" type="text" class="form-control" placeholder="Keluar" autocomplete="off">
						</div>	
						<!-- <div class="form-group">
							<label>Keluar</label>
							<input name="keluar" type="text" class="form-control" placeholder="Keluar" autocomplete="off">
						</div> -->																	

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
						<input type="reset" class="btn btn-danger" value="Reset">												
						<input type="submit" class="btn btn-primary" value="Simpan">
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#tgl").datepicker({dateFormat : 'dd-mm-yy'});							
		});
	</script>
	<?php include 'footer.php'; ?>