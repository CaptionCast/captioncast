$(document).ready(function(){
	console.log('hello there');
	var $contentBox = $('#text_content_text');
	$('#supBlank').click(function(){

		console.log('how\'m I doing so far?');
		$contentBox.val($contentBox.val() + '<br />');


	});

//changes the database visible value for element
	$('.visi').click(function(){
		$vis = $(this);
		console.log(this);
		console.log('visi changed');
		//$(this).toggleClass('visiTr');
		$.ajax('/texts/toggleVis',
			{
				data:{
					id: $vis.attr('data-id')
					},
				method: 'POST',
				success:(function(d){
					//console.log('success');
					//console.log(d);
					$vis.toggleClass('visiTr');

				}),
				error:(function(e){
					//console.log(e);
					//console.log('error');
					//console.log('i got nothing');
				})
			}
		);

	});



})