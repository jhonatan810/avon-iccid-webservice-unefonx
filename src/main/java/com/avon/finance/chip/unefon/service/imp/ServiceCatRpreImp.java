package com.avon.finance.chip.unefon.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.avon.finance.chip.unefon.Vo.CatRepreVo;
import com.avon.finance.chip.unefon.dao.ICatRepreDao;
import com.avon.finance.chip.unefon.dao.IRecordIccidDao;
import com.avon.finance.chip.unefon.model.CatRepre;
import com.avon.finance.chip.unefon.service.IServiceCatRepre;

@Service
public class ServiceCatRpreImp implements IServiceCatRepre {
	  
	@Autowired
	ICatRepreDao iCatRepreDao;
	
	@Autowired
	IRecordIccidDao iRecordIccidDao;
	
	@Override
	public CatRepreVo searchRepre(CatRepre catRepre)  throws Exception{

		CatRepreVo catRepreVo = null;
		CatRepre modelData = iCatRepreDao.findOne(catRepre.getRepre());
		
		if(modelData != null) {
			catRepreVo = new CatRepreVo();
			catRepreVo.setNombre(modelData.getNombre());
			catRepreVo.setRepre(modelData.getRepre());
		}else {
			CatRepre save = iCatRepreDao.save(catRepre);
			catRepreVo = new CatRepreVo();
			catRepreVo.setNombre(save.getNombre());
			catRepreVo.setRepre(save.getRepre());
		}
		return catRepreVo;
	}
}
