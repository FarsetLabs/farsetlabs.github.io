$( document ).ready( function() {

	$.getJSON('https://dylan.farsetlabs.org.uk/mate/stock.json', 
		function ( data ) {
			$.each( data, function( key, val ) {
				$('#'+key).text(val);
			});
		}
	);
});
