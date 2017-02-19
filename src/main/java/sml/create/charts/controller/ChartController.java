package sml.create.charts.controller;

import java.text.ParseException;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import sml.create.charts.service.TesteService;
import sml.create.charts.util.ConverterUtil;

@Controller
@RequestMapping("/chart")
public class ChartController {

	private static final Logger logger = LoggerFactory.getLogger(ChartController.class);

	private TesteService testeService;

	@Autowired
	@Qualifier(value = "testeService")
	public void setTesteService(TesteService testeService) {
		this.testeService = testeService;
	}

	@RequestMapping(value = "/tempo", method = RequestMethod.GET)
	public String tempo(HttpServletRequest request) {
		return "gpiechart";
	}

	@RequestMapping(value = "/acesso", method = RequestMethod.GET)
	public String acesso(HttpServletRequest request) {
		return "grafico-diario";
	}
	
	@RequestMapping(value = "/quantidade/acesso/metodo", method = RequestMethod.GET)
	public @ResponseBody String getGraficoQuantidadeAcessoMetodo(HttpServletRequest request) throws ParseException {
		return ConverterUtil.ListaToJSON(testeService.getQuantidadeAcessoMetodo());
	}

	@RequestMapping(value = "/quantidade/acesso", method = RequestMethod.GET)
	public @ResponseBody String getGraficoQuantidadeAcesso(HttpServletRequest request) throws ParseException {
		return ConverterUtil.listObjectToGraficoAcesso(testeService.getQuantidadeAcesso());
	}

	@RequestMapping(value = "/media/tempo", method = RequestMethod.GET)
	public @ResponseBody String getGraficoMediaTempo() {
		return ConverterUtil.ListaToJSON(testeService.getMediaRequisicao());
	}

	private JSONArray mockaObjeto() {
		JSONObject json = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		int[] teste = getValores();
		json.put("name", "OK");
		json.put("data", teste);
		jsonArray.put(json);

		json = new JSONObject();
		teste = getValores();
		json.put("name", "Erro");
		json.put("data", teste);
		jsonArray.put(json);

		return jsonArray;
	}

	private int[] getValores() {
		int[] teste = new int[13];
		for (int i = 0; i < teste.length; i++) {
			Random r = new Random();
			int Low = 10;
			int High = 100;
			teste[i] = r.nextInt(High - Low) + Low;
		}
		return teste;
	}
}
