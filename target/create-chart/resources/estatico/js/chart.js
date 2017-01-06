$(function() {

	$.get("chart/pie", function(data) {
		console.log(data);
		var json = $.parseJSON(data);

		Highcharts.chart('container', {
			title : {
				text : 'Status de Requisicao',
				x : -20
			//center
			},
			xAxis: {
	            categories: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun',
	                'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
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
			series : json
		});
	});

});