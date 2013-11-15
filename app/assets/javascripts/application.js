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

function createBookRoom(title) {

	$.ajax({
		url: '/books/create',
		dataType: 'json',
		data: {title: title},
		method: 'post'
		})
	.done();

}

function searchUsers(name){

	$.ajax({
		url: '/profile/search',
		dataType: 'json',
		data: {name: name},
		method: 'post'
		})
	.done(function(data) {
      $('#friend-search-table').empty();
      $(data).each(function(ind, person) {
      $('#friend-search-table').append($('<li data-id="' +person['id']+'">'+ person['first_name'] +" "+person['last_name'] +'</li>'));
      });
      $('#friend-search-table li').on('click', function(){
      var friend_id = $(this).data("id");
      $.ajax({
				url: '/friendships/create',
				dataType: 'json',
				data: { friend_id: friend_id},
				method: 'get',
				complete: location.reload()
				})
      .done();
  });

	});
}


function searchFriends(name){

	$.ajax({
		url: '/books/search',
		dataType: 'json',
		data: {name: name},
		method: 'post'
		})
	.done(function(data) {
		$('#group-search-table').empty();
		$(data).each(function(ind, person){
			$('#group-search-table').append($('<li data-id="' +person['id']+'">'+ person['first_name'] +" "+person['last_name'] +'</li>'));
		});
		$('#group-search-table li').on('click', function(){
			var friend_id = $(this).data("id");
			$.ajax({
						url: '/books/add',
						dataType: 'json',
						data: { user_id: friend_id},
						method: 'get',
						complete: location.reload()
						})
			.done();
		});

	});
}

$(function(){
	$(".submit").click(function() {
		var title = $('#submit_title').val();
		createBookRoom(title);


	});

	$('#search_input').keyup(
		function() {
			var textext = $('#search_input').val();
			if (textext.length === 0) {
				$('#friend-search-table').empty();
			} else {
				searchUsers(textext);
			}
	
		});
	
	$('#search_input').keyup(function() {
		var text = $('#search_input').val();
			if (text.length === 0) {
				$('#group-search-table').empty();
			} else {
				searchFriends(text);

			}

		});

	
});
