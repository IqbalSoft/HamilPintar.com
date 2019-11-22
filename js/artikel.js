$(document).ready(function(){
    $('#tbl').hide();

   $('#keyword').on('keyup', function(){
		$('#container').load('../ajax/artikel.php?keyword=' + $('#keyword').val());
	});
});