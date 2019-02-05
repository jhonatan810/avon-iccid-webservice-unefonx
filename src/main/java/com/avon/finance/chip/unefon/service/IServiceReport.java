package com.avon.finance.chip.unefon.service;

import java.util.List;

import com.avon.finance.chip.unefon.Vo.ReportVo;

public interface IServiceReport {
	public List<ReportVo> searchReportMounth(Integer month, Integer year, String noRepre) throws Exception;
}
