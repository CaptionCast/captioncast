//javascript for operator view goes here
_.templateSettings = {
    interpolate: /\{\{\=(.+?)\}\}/g,
    evaluate: /\{\{(.+?)\}\}/g
};
$(document).ready(function(){
	//if we're in the operator view
	if($('#main-operator').length>0){
		$('#main-operator').height($(window).innerHeight()+'px');

		//console.log('this is the operator view');
		//set the templates
		var tLine = _.template($('#line-template-operator').html());

		//templating per line
		_.each(lines, function(q, i){
			//console.log(q.content_text);
			//if the line is visible then show it?
			//maybe we want it just a different color for operator view
			if(i%2==0){
				q.even=true;

			}else{
				q.even=false;
			}
			if(q.visibility){
				$('#line-holder-operator').append(
					tLine(q)
				);
			}
		});
		//this happens when you click the commit button
		$('#commit-button-operator').click(function(){
			//post the position of the selected line via ajax
			console.log('line committed');
		});

		$('#line-holder-operator').scroll(function(){
			//logic that happens when scrolling goes here
			console.log(
				//scrolltop holds the key
				$('#line-holder-operator').scrollTop()
				);
		})
	}

});