package com.edu.unbosque.tiendagenerica.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	
	/** Parametros de conexion DESARROLLO - LOCALHOST */
	static String nombre_base_datos = "tiendagenerica";
	static String usuariobd = "admin";
	static String clavebd = "admin123";
	static String url = "jdbc:mysql://127.0.0.1/" + nombre_base_datos;
	
	
	/** Parametros de conexion TEMPORAL - HOSTING*/
	//static String nombre_base_datos = "u946725276_tiendagenerica";
	//static String usuariobd = "u946725276_admin";
	//static String clavebd = "Motorol@+1";
	//static String url = "jdbc:mysql://sql185.main-hosting.eu/" + nombre_base_datos;
	

	/** Parametros de conexion PRODUCCIÓN AWS */
	//static String nombre_base_datos = "g38e8";
	//static String usuariobd = "admin";
	//static String clavebd = "minticroca";
	//static String url = "jdbc:mysql://tiendasgenericasdr-g9-g38-53.czo3ixoe3xoe.us-east-1.rds.amazonaws.com/" + nombre_base_datos;
	
	
	
	//objeto sin inicializar de la conexión
	Connection connection = null;
	/** Constructor de DbConnection */
	public Conexion() {
		try {
			// obtenemos el driver de para mysql
			Class.forName("com.mysql.cj.jdbc.Driver");
			// obtenemos la conexión
			connection = DriverManager.getConnection(url, usuariobd, clavebd);
			//si hay conexión correcta mostrar información en consola
			if (connection != null) {
				System.out.println("Conexión a base de datos " 
			+ nombre_base_datos + " OK\n");
			}
		
		} catch (SQLException e) {
			//error de la base de datos
			System.out.println(e);
		} catch (ClassNotFoundException e) {
			//error en carga de clases
			System.out.println(e);
		} catch (Exception e) {
			//cualquier otro error
			System.out.println(e);
		}
	}

	/** Permite retornar la conexión */
	public Connection getConnection() {
		return connection;
	}
	
	//cerrando la conexión
	public void desconectar() {
		connection = null;
	}
	
	
}
