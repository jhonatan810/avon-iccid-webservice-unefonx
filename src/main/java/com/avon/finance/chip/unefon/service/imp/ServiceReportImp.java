package com.avon.finance.chip.unefon.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avon.finance.chip.unefon.Vo.ReportVo;
import com.avon.finance.chip.unefon.dao.IReportDao;
import com.avon.finance.chip.unefon.model.Report;
import com.avon.finance.chip.unefon.service.IServiceReport;

@Service
public class ServiceReportImp implements IServiceReport {
	  
	@Autowired
	IReportDao iReportDao;
	

	@Override
	public List<ReportVo> searchReportMounth(Integer month, Integer year, String noRepre) throws Exception {
		
		List<ReportVo> reportsVo = new ArrayList<ReportVo>();
		List<Report> modelDat = iReportDao.findAllMonthYear(month, year, noRepre);

		for(Report aReport: modelDat) {
			ReportVo aReportVo = new ReportVo();
			aReportVo.setIccid(aReport.getIdRegistro().getIccid());
			aReportVo.setMonto(aReport.getMonto());
			aReportVo.setFechaRecarga(aReport.getFechaRecarga());
			aReportVo.setComision(aReport.getComision());
			
			reportsVo.add(aReportVo);
		}
		
		return reportsVo;
	}

}
