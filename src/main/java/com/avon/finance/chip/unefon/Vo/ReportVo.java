package com.avon.finance.chip.unefon.Vo;

import java.sql.Date;

public class ReportVo {
	
	private Integer idDetalle;
	private String idRegistro; 
	private  String iccid;
	private Double monto; 
	private Date fechaRecarga;
	private Double comision;
	private Double montoPagoBids;
	
	
	public ReportVo() {
	}

	public ReportVo(Integer idDetalle, String idRegistro, String iccid, Double monto, Date fechaRecarga, Double comision,
			Double montoPagoBids) {
		super();
		this.idDetalle = idDetalle;
		this.idRegistro = idRegistro;
		this.iccid = iccid;
		this.monto = monto;
		this.fechaRecarga = fechaRecarga;
		this.comision = comision;
		this.montoPagoBids = montoPagoBids;
	}

	public Integer getIdDetalle() {
		return idDetalle;
	}

	public void setIdDetalle(Integer idDetalle) {
		this.idDetalle = idDetalle;
	}

	public String getIdRegistro() {
		return idRegistro;
	}

	public void setIdRegistro(String idRegistro) {
		this.idRegistro = idRegistro;
	}

	public String getIccid() {
		return iccid;
	}

	public void setIccid(String iccid) {
		this.iccid = iccid;
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
		return "ReportVo [idDetalle=" + idDetalle + ", idRegistro=" + idRegistro + ", iccid=" + iccid + ", monto=" + monto
				+ ", fechaRecarga=" + fechaRecarga + ", comision=" + comision + ", montoPagoBids=" + montoPagoBids
				+ "]";
	}
	
}
