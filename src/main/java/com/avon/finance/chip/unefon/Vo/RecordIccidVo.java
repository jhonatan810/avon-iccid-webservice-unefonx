package com.avon.finance.chip.unefon.Vo;

public class RecordIccidVo {

	private int id;
	private String repre;
	private String nombreRepre;
	private String iccid;
	private String nombreUsuario;
	
	public RecordIccidVo() {
	}
	
	public RecordIccidVo(int id, String repre, String nombreRepre, String iccid, String nombreUsuario) {
		super();
		this.id = id;
		this.repre = repre;
		this.nombreRepre = nombreRepre;
		this.iccid = iccid;
		this.nombreUsuario = nombreUsuario;
	}

	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRepre() {
		return repre;
	}
	
	public void setRepre(String repre) {
		this.repre = repre;
	}
	
	public String getNombreRepre() {
		return nombreRepre;
	}
	
	public void setNombreRepre(String nombreRepre) {
		this.nombreRepre = nombreRepre;
	}
	
	public String getIccid() {
		return iccid;
	}
	
	public void setIccid(String iccid) {
		this.iccid = iccid;
	}
	
	public String getNombreUsuario() {
		return nombreUsuario;
	}
	
	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}

	@Override
	public String toString() {
		return "RecordIccidVo [id = "+id+" repre=" + repre + ", nombreRepre=" + nombreRepre + ", iccid=" + iccid + ", nombreUsuario="
				+ nombreUsuario + "]";
	}
}
