package com.avon.finance.chip.unefon.service;

import java.util.List;

import com.avon.finance.chip.unefon.Vo.RecordIccidVo;
import com.avon.finance.chip.unefon.model.CatRepre;
import com.avon.finance.chip.unefon.model.RecordIccid;

public interface IServiceRecordIccid {
	public List<RecordIccidVo> searchRecord(CatRepre catRepre) throws Exception;
	public boolean saveListRecord(List<RecordIccid> listRecords) throws Exception;
}
