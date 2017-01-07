$(function() {

	$.get("chart/pie", function(data) {
		console.log(data);
		var json = $.parseJSON(data);
		console.log(json.metodos);
		Highcharts.chart('container', {
			title : {
				text : 'Media tempo de requisao X Metodo',
				x : -20
			//center
			},
			xAxis: {
	            categories: json.metodos
	        },
			yAxis : {
				title : {
					text : 'Quantidade'
				},
				plotLines : [ {
					value : 0,
					width : 1,
					color : '#808080'
				} ]
			},
			tooltip : {
				valueSuffix : ' requisicoes'
			},
			legend : {
				layout : 'vertical',
				align : 'right',
				verticalAlign : 'middle',
				borderWidth : 0
			},
			series : [{
				name : 'tempo',
				data: json.tempo}]
		});
	});

});