<?php
//proses
    if(isset($_POST['simpan'])) {
    $nama=$_POST['nama'];
    
//script validasi data

    $cek = mysql_num_rows(mysqli_query($conn,"SELECT * FROM barang WHERE nama='$nama'));
    if ($cek > 0){
    echo "<script>window.alert('nama atau email yang anda masukan sudah ada')
    window.location='barang.php'</script>";
    }else {
    mysqli_query($conn,"INSERT INTO barang(id,nama)
    VALUES ('','$nama')");

    echo "<script>window.alert('DATA SUDAH DISIMPAN')
    window.location='index.php'</script>";
    }
    }
    ?>