package com.avon.finance.chip.unefon.utilties;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.avon.finance.chip.unefon.Vo.PeriodDateVo;
import com.avon.finance.chip.unefon.model.CatRepre;
import com.avon.finance.chip.unefon.model.RecordIccid;

public class Utility {

	
	public static List<RecordIccid> convertListRecords(String[][] records){
		ArrayList<RecordIccid> listRecords = null;
		
		try {
			
			if(records == null || records.length == 0) {
				return null;
			}
			java.util.Date date = new java.util.Date();
			Date dateCurrent = new Date(date.getTime());
			
			listRecords = new ArrayList<RecordIccid>();
			for(int i= 0; i < records.length; i++) {
				RecordIccid aRecord = new RecordIccid();
				for(int j = 1; j < records[i].length; j++) {
					
					switch (j) {
					case 1:
						CatRepre aCatRepre = new CatRepre();
						aCatRepre.setRepre(records[i][j]);
						aRecord.setRepre(aCatRepre);
						break;
					case 2:
						aRecord.getRepre().setNombre(records[i][j]);
						break;
					case 3:
						aRecord.setIccid(records[i][j]);
						break;
					case 4:
						aRecord.setNombreUsuario(records[i][j]);
						break;
					default:
						break;
					}
				}
				aRecord.setFechaRegistro(dateCurrent);
				listRecords.add(aRecord);
			}
			System.out.println();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return listRecords;
	}
	
	
	public static String getStringMonthYear(Calendar date) {
		String strDate = "";
		System.out.println();
		try {
			switch (date.get(Calendar.MONTH)) {
			case 0: strDate = "Enero"; break;
			case 1: strDate = "Febrero"; break;
			case 2: strDate = "Marzo"; break;
			case 3: strDate = "Abril"; break;
			case 4: strDate = "Mayo"; break;
			case 5: strDate = "Junio"; break;
			case 6: strDate = "Nulio"; break;
			case 7: strDate = "Agosto"; break;
			case 8: strDate = "Septiembre"; break;
			case 9: strDate = "Octubre"; break;
			case 10: strDate = "Noviembre"; break;
			case 11: strDate = "Diciembre"; break;
			default:
				break;
			}
			strDate += " "+date.get(Calendar.YEAR);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		return strDate;
	}
	
	
	public static List<PeriodDateVo> fillComboPeriod(Calendar cal){
		List<PeriodDateVo> dates = new ArrayList<PeriodDateVo>();
		try {
			dates.add(new PeriodDateVo(((cal.get(Calendar.MONTH)+1)<10?"0"+(cal.get(Calendar.MONTH)+1):cal.get(Calendar.MONTH)+1)+""+cal.get(Calendar.YEAR), Utility.getStringMonthYear(cal)));
			cal.add(Calendar.MONTH,-1);
			dates.add(new PeriodDateVo(((cal.get(Calendar.MONTH)+1)<10?"0"+(cal.get(Calendar.MONTH)+1):cal.get(Calendar.MONTH)+1)+""+cal.get(Calendar.YEAR), Utility.getStringMonthYear(cal)));
			cal.add(Calendar.MONTH,-1);
			dates.add(new PeriodDateVo(((cal.get(Calendar.MONTH)+1)<10?"0"+(cal.get(Calendar.MONTH)+1):cal.get(Calendar.MONTH)+1)+""+cal.get(Calendar.YEAR), Utility.getStringMonthYear(cal)));
		}catch (Exception e) {
			e.printStackTrace();
		}
		return dates;
	}
}
