package com.avon.finance.chip.unefon.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.avon.finance.chip.unefon.Vo.CatRepreVo;
import com.avon.finance.chip.unefon.Vo.RecordIccidVo;
import com.avon.finance.chip.unefon.model.CatRepre;
import com.avon.finance.chip.unefon.model.RecordIccid;
import com.avon.finance.chip.unefon.service.IServiceCatRepre;
import com.avon.finance.chip.unefon.service.IServiceRecordIccid;
import com.avon.finance.chip.unefon.utilties.Utility;

@Controller
public class RecordController {
	
	@Autowired
	IServiceCatRepre iServiceCatRepre;
	
	@Autowired
	IServiceRecordIccid iServiceRecordIccid;
	
	@RequestMapping("/index.jsp")
	String home(ModelMap modal) {
		String  noRepreSt = "12345678";
		String  nombreRepre = "Maria del Carmen";
		String pagina = "error-repre";
		
		CatRepre catRepre = new CatRepre(noRepreSt,nombreRepre);
		
		try {
			CatRepreVo searchRepre = iServiceCatRepre.searchRepre(catRepre);
			
			if(searchRepre != null) {
				modal.addAttribute("noRepre", searchRepre.getRepre());
				modal.addAttribute("nameRepre", searchRepre.getNombre());
			
				catRepre.setNombre(null);
				List<RecordIccidVo> recordRepre = iServiceRecordIccid.searchRecord(catRepre);
				modal.addAttribute("listRecords", recordRepre);
				pagina = "index";
			}
		}catch (Exception e) {
			e.printStackTrace();
			modal.addAttribute("error", "Ourrio un error al tratar de consultar la información. Intenta más tarde");
		}
		return pagina;
	}
	
	@RequestMapping( value = "/save",  method=RequestMethod.POST, produces="application/json")
	public @ResponseBody List<RecordIccid> save(ModelMap modal, @RequestBody String[][] records) {
		List<RecordIccid> listRecords = Utility.convertListRecords(records);
		
		try {
			boolean saveListRecord = iServiceRecordIccid.saveListRecord(listRecords);
			
			if(saveListRecord) {
				modal.addAttribute("message", "Se guardo correctamente");	
			}else {
				modal.addAttribute("message", "Ocurrio un error al tratar de guardar los ICCD's");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listRecords;
	}
	
}
