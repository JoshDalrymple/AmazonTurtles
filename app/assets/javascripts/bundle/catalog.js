$(document).ready(function(){
	$('#user_turtle_turtle_id').on('change', function() {
		var turtleType = $(this).find("option:selected").text();
  		$('.TurtleDescription').each(function(){
  			$(this).hide();
  		});
  		$('.' + turtleType + 'Description').show();
	});
});