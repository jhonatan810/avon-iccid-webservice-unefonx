package com.avon.finance.chip.unefon.Vo;

public class PeriodDateVo {
	
	private String id;
	private String strDate;
	
	public PeriodDateVo(String id, String strDate) {
		this.id = id;
		this.strDate = strDate;
	}

	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getStrDate() {
		return strDate;
	}
	
	public void setStrDate(String strDate) {
		this.strDate = strDate;
	}
	
	@Override
	public String toString() {
		return "PeriodDateVo [id=" + id + ", strDate=" + strDate + "]";
	}
}
