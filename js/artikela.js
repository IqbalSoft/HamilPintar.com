$(document).ready(function(){
    $('#tbl').hide();

   $('#keyword').on('keyup', function(){
		$('#container').load('../ajax/artikel_admin.php?keyword=' + $('#keyword').val());
	});
});