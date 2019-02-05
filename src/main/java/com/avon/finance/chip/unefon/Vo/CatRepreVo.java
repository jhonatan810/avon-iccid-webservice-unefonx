package com.avon.finance.chip.unefon.Vo;

public class CatRepreVo {

	private String repre;
	private String nombre;

	
	public CatRepreVo() {
		this.repre = "";
		this.nombre ="";
	}
	
	public CatRepreVo(String repre, String nombre) {
		super();
		this.repre = repre;
		this.nombre = nombre;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getRepre() {
		return repre;
	}

	public void setRepre(String repre) {
		this.repre = repre;
	}
}
