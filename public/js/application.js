$(document).ready(function() {
	$('form').on('submit', function(event) {
		event.preventDefault()
		$.ajax({
			url: '/shorten_link',
			method: 'post',
			data: $(this).serialize(),
			success: function(data) {
				res= JSON.parse(data)
				console.log(res.short_url)
				console.log(res.long_url)
				// $('tr:first-child').after('<tr><td>' + res.long_url + '</td><td>' + 'http://localhost:9393/' + res.short_url + '<td><td>0</td></td>')
			
				$('tr:first-child').after('<tr><td>' + res.id + '</td><td>' + res.long_url + '</td><td><a href="/' + res.short_url +'">' + res.short_url + '</a></td><td>'+ res.click +'</td></tr>')
			}
		})
	})
});