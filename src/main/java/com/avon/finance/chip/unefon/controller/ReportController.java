package com.avon.finance.chip.unefon.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.avon.finance.chip.unefon.Vo.PeriodDateVo;
import com.avon.finance.chip.unefon.Vo.ReportVo;
import com.avon.finance.chip.unefon.service.IServiceReport;
import com.avon.finance.chip.unefon.utilties.Utility;

@Controller
public class ReportController {
	
	@Autowired
	IServiceReport iServiceReport;
	
	
	@RequestMapping("/consulta.jsp")
	public String homeReport(ModelMap modal) {
		String  noRepreSt = "12345678";
		String  nombreRepre = "Maria del Carmen";
		String pagina = "error-repre";
		Calendar cal = Calendar.getInstance();
		List<PeriodDateVo> dates = new ArrayList<PeriodDateVo>();
		
		try {
			//LLenar combo periodo, con el mes actual y dos anteriores
			dates = Utility.fillComboPeriod(cal);
		
			cal = Calendar.getInstance();
			List<ReportVo> reports = iServiceReport.searchReportMounth(cal.get(Calendar.MONTH)+1,cal.get(Calendar.YEAR), noRepreSt);
			
			Double monto = new Double(0);
			for(ReportVo aReport: reports) {
				monto += aReport.getComision();
			}
			
			modal.addAttribute("totalCommissions", monto);
			modal.addAttribute("datesPeriod", dates);
			modal.addAttribute("nameRepre", nombreRepre);
			modal.addAttribute("reports", reports);

			pagina = "consulta-detalle-borrar";
		}catch (Exception e) {
			e.printStackTrace();
		}
		return pagina;
	}
	
	@RequestMapping(value = "/reportPeriod",  method=RequestMethod.POST, produces="application/json")
	public @ResponseBody List<ReportVo> changePeriod(ModelMap modal, @RequestBody String dateSelection) {
		String  noRepreSt = "12345678";
		String  nombreRepre = "Maria del Carmen";
		Calendar cal = Calendar.getInstance();
		List<PeriodDateVo> dates = new ArrayList<PeriodDateVo>();
		List<ReportVo> reports = new  ArrayList<ReportVo>();
		
		try {
			dates = Utility.fillComboPeriod(cal);
			
			reports = iServiceReport.searchReportMounth(Integer.parseInt(dateSelection.substring(0, dateSelection.length()-4)),Integer.parseInt(dateSelection.substring(dateSelection.length()-4, dateSelection.length())), noRepreSt);
			
			Double monto = new Double(0);
			for(ReportVo aReport: reports) {
				monto += aReport.getComision();
			}
			
			modal.addAttribute("totalCommissions", monto);
			modal.addAttribute("datesPeriod", dates);
			modal.addAttribute("nameRepre", nombreRepre);
			modal.addAttribute("reports", reports);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return reports;
	}
	
	

}
