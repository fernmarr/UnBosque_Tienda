package com.edu.unbosque.tiendagenerica.DTO;

import java.io.Serializable;


public class ReporteVO implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	
	
	private Integer cedula_cliente;
	private String nombre_cliente;
	private Double valor_venta;
	private Double total_venta;
	
	public Integer getCedula_cliente() {
		return cedula_cliente;
	}
	public void setCedula_cliente(Integer cedula_cliente) {
		this.cedula_cliente = cedula_cliente;
	}
	public String getNombre_cliente() {
		return nombre_cliente;
	}
	public void setNombre_cliente(String nombre_cliente) {
		this.nombre_cliente = nombre_cliente;
	}
	public Double getValor_venta() {
		return valor_venta;
	}
	public void setValor_venta(Double valor_venta) {
		this.valor_venta = valor_venta;
	}
	public Double getTotal_venta() {
		return total_venta;
	}
	public void setTotal_venta(Double total_venta) {
		this.total_venta = total_venta;
	}

	
}
