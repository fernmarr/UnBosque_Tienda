package com.edu.unbosque.tiendagenerica.DAO;

import java.sql.*;
import java.util.ArrayList;
import com.edu.unbosque.tiendagenerica.DTO.ReporteVO;


public class ReporteDAO {
	

	public ArrayList<ReporteVO> reporteDeVentas() {
		// lista que contendra los datos
		ArrayList<ReporteVO> reporteventas = new ArrayList<ReporteVO>();

		// instancia de la conexión
		Conexion conex = new Conexion();

		try {
			// prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("select ventas.cedula_cliente, clientes.nombre_cliente, round(sum(ventas.valor_venta),2) valor_venta from ventas INNER JOIN clientes ON ventas.cedula_cliente = clientes.cedula_cliente group by cedula_cliente;");
			// ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			// cree un objeto para cada encontrado en la base de datos basado en la clase
			// entidad con los datos encontrados
			while (res.next()) {
				ReporteVO Reporte = new ReporteVO();
				
				Reporte.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
				Reporte.setNombre_cliente(res.getString("nombre_cliente"));
				Reporte.setValor_venta(Double.parseDouble(res.getString("valor_venta")));				
				reporteventas.add(Reporte);
			}
			
			// cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todas las ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todas las ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return reporteventas;
	}
	
	
	public ArrayList<ReporteVO> sumaTotalVentas() {
		// lista que contendra los datos
		ArrayList<ReporteVO> totalventas = new ArrayList<ReporteVO>();

		// instancia de la conexión
		Conexion conex = new Conexion();

		try {
			// prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("select round(sum(ventas.valor_venta),2) total_venta from ventas;");
			// ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			// cree un objeto para cada encontrado en la base de datos basado en la clase
			// entidad con los datos encontrados
			while (res.next()) {
				ReporteVO Reporte = new ReporteVO();
				
				Reporte.setTotal_venta(Double.parseDouble(res.getString("total_venta")));				
				totalventas.add(Reporte);
			}
			
			// cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			// si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todas las ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			// si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar todas las ventas");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return totalventas;
	}
	
}