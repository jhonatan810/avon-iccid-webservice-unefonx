package com.avon.finance.chip.unefon.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "cat_repre_tab")
public class CatRepre {

	@Id
	@Column(name = "repre", insertable = true)
	private String repre;

	@Column(name = "nombre")
	private String nombre;
	
	public CatRepre() {
	}

	public CatRepre(String repre, String nombre) {
		super();
		this.repre = repre;
		this.nombre = nombre;
	}

	public String getRepre() {
		return repre;
	}
	
	public void setRepre(String repre) {
		this.repre = repre;
	}
	
	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	@Override
	public String toString() {
		return "CatRepre [repre=" + repre + ", nombre=" + nombre + "]";
	}
	
}
