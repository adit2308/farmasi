<?php 
include 'header.php';
?>

<?php
$a = mysql_query("select * from barang");
?>

<div class="col-md-10">
	<h3>Selamat datang</h3>	
    <h3>Aplikasi Stok Barang</h3>
    <!-- <h3>WWW.MALASNGODING.COM</h3> -->
</div>
<!-- kalender -->
<div class="pull-right">
	<div id="kalender"></div>
</div>

<?php 
include 'footer.php';

?>