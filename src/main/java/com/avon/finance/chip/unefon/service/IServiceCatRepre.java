package com.avon.finance.chip.unefon.service;

import com.avon.finance.chip.unefon.Vo.CatRepreVo;
import com.avon.finance.chip.unefon.model.CatRepre;

public interface IServiceCatRepre {
	
	public CatRepreVo searchRepre(CatRepre catRepre) throws Exception;
}
