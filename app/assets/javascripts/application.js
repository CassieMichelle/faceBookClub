// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
 
console.log('boom!!!!!')

var friend = $('#friend-table td'); 

function searchCall(name){

	$.ajax({
		url: '/profile/search',
		dataType: 'json',
		data: {name: name},
		method: 'post'
		})
	    .done(function(data) {
	    		$('#friend-table').empty();
		    	
		    	$(data).each(function(ind, person){
		    		$('#friend-table').append($('<tr><td>'+ person['first_name'] +'</td><td>'+ person['last_name'] +'</td></tr>'));
		    	})

		    	 $('#friend-table td').on('click', function(){
		    	 	console.log('bogart!!!!')
		    	 	$.ajax({
							url: '/friendship/request',
							dataType: 'json',
							data: {user: user, friend: friend},
							method: 'post'
							})
		    	 			
		    	 });

	});
};


$(function(){
	
	$('#search_input').keyup(
		function(){ 
			var textext = $('#search_input').val();
			searchCall(textext);

		}
	 );


	
});
