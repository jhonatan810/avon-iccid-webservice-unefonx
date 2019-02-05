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
@Table(name = "detalle_iccid_tab")
public class Report {
	
	@Id
	@GeneratedValue( strategy= GenerationType.IDENTITY ) 
	@Column(name = "iddetalle")
	private Integer idDetalle;
	
	@ManyToOne
	@JoinColumn(name = "idregistro")
	private RecordIccid idRegistro; 
	
	@Column(name = "monto")
	private Double monto; 
	
	@Column(name = "fecharecarga")
	private Date fechaRecarga;
	
	@Column(name = "comision")
	private Double comision;
	
	@Column(name = "montopagobids")
	private Double montoPagoBids;

	
	public Report() {
	}

	public Integer getIdDetalle() {
		return idDetalle;
	}

	public void setIdDetalle(Integer idDetalle) {
		this.idDetalle = idDetalle;
	}

	public RecordIccid getIdRegistro() {
		return idRegistro;
	}

	public void setIdRegistro(RecordIccid idRegistro) {
		this.idRegistro = idRegistro;
	}

	public Double getMonto() {
		return monto;
	}

	public void setMonto(Double monto) {
		this.monto = monto;
	}

	public Date getFechaRecarga() {
		return fechaRecarga;
	}

	public void setFechaRecarga(Date fechaRecarga) {
		this.fechaRecarga = fechaRecarga;
	}

	public Double getComision() {
		return comision;
	}

	public void setComision(Double comision) {
		this.comision = comision;
	}

	public Double getMontoPagoBids() {
		return montoPagoBids;
	}

	public void setMontoPagoBids(Double montoPagoBids) {
		this.montoPagoBids = montoPagoBids;
	}

	@Override
	public String toString() {
		return "Report [idDetalle=" + idDetalle + ", idRegistro=" + idRegistro + ", monto=" + monto + ", fechaRecarga="
				+ fechaRecarga + ", comision=" + comision + ", montoPagoBids=" + montoPagoBids + "]";
	} 
	
}
