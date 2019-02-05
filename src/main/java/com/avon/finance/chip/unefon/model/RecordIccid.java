package com.avon.finance.chip.unefon.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "registro_iccid_tab")
public class RecordIccid {
	
	@Id
	@GeneratedValue( strategy= GenerationType.AUTO ) 
	@Column(name = "idregistro")
	private Integer idRegistro; 
	
	@ManyToOne
	@JoinColumn(name = "repre")
	private CatRepre repre; 
	
	@Column(name = "nombreusuario")
	private String nombreUsuario; 
	
	@Column(name = "iccid")
	private String iccid;
	
	@Column(name = "fecharegistro")
	private Date fechaRegistro;
	
	
	public RecordIccid() {
	}

	public Integer getIdRegistro() {
		return idRegistro;
	}

	public void setIdRegistro(Integer idRegistro) {
		this.idRegistro = idRegistro;
	}

	public CatRepre getRepre() {
		return repre;
	}

	public void setRepre(CatRepre repre) {
		this.repre = repre;
	}

	public String getNombreUsuario() {
		return nombreUsuario;
	}

	public void setNombreUsuario(String nombreUsuario) {
		this.nombreUsuario = nombreUsuario;
	}

	public String getIccid() {
		return iccid;
	}

	public void setIccid(String iccid) {
		this.iccid = iccid;
	}

	public Date getFechaRegistro() {
		return fechaRegistro;
	}

	public void setFechaRegistro(Date fechaRegistro) {
		this.fechaRegistro = fechaRegistro;
	}

	@Override
	public String toString() {
		return "RecordIccid [idRegistro=" + idRegistro + ", repre=" + repre + ", nombreUsuario=" + nombreUsuario
				+ ", iccid=" + iccid + ", fechaRegistro=" + fechaRegistro + "]";
	}
}
