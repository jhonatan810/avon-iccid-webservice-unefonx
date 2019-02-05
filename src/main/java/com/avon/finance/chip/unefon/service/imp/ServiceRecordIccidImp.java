package com.avon.finance.chip.unefon.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import com.avon.finance.chip.unefon.Vo.RecordIccidVo;
import com.avon.finance.chip.unefon.dao.IRecordIccidDao;
import com.avon.finance.chip.unefon.model.CatRepre;
import com.avon.finance.chip.unefon.model.RecordIccid;
import com.avon.finance.chip.unefon.service.IServiceRecordIccid;

@Service
public class ServiceRecordIccidImp implements IServiceRecordIccid {
	  
	@Autowired
	IRecordIccidDao iRecordIccidDao;
	

	@Override
	public List<RecordIccidVo> searchRecord(CatRepre catRepre) throws Exception{
		
		List<RecordIccidVo> recordIccidVos = new ArrayList<RecordIccidVo>();
		
		RecordIccid aRecord = new RecordIccid();
		aRecord.setRepre(catRepre);
		
		Example<RecordIccid> example = Example.of(aRecord);
		List<RecordIccid> modelDat = iRecordIccidDao.findAll(example);
		
			for(RecordIccid aRecordIccid: modelDat) {
				RecordIccidVo aRecordVo = new RecordIccidVo();
				aRecordVo.setRepre(aRecordIccid.getRepre().getRepre());
				aRecordVo.setNombreRepre(aRecordIccid.getRepre().getNombre());
				aRecordVo.setIccid(aRecordIccid.getIccid());
				aRecordVo.setNombreUsuario(aRecordIccid.getNombreUsuario());
				recordIccidVos.add(aRecordVo);
			}
		return recordIccidVos;
	}


	@Override
	public boolean saveListRecord(List<RecordIccid> listRecords) throws Exception {
		
		if(listRecords == null) {
			return false;
		}
		
		iRecordIccidDao.save(listRecords);

		System.out.println();
		return false;
	}

}
