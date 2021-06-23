
function myFunction() {
   var bln = document.querySelector('select[name="bulan"]').value;
  document.getElementById("bln_tb").innerHTML = "BULAN: " + bln;
  console.log(bln);
}


function thnFunction() {
  var thn = document.querySelector('select[name="tahun"]').value;
  document.getElementById("thn_tb").innerHTML = "TAHUN: " + thn;
  console.log(thn);
}

function exportFunction() {
	 var bln = "Januari";
	 document.getElementById("bln_tb").innerHTML = "BULAN: " + bln;
  //alert("Page is loaded");
}