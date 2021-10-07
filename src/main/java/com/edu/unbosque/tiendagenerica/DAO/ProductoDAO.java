package com.edu.unbosque.tiendagenerica.DAO;

import java.sql.*;
import java.util.ArrayList;
import com.edu.unbosque.tiendagenerica.DTO.ProductoVO;



public class ProductoDAO {
	
	
	/**
	 * Permite registrar un Producto nuevo
	 * 
	 * @param user
	 */
	public void registrarProducto(ProductoVO prov) {
		//llama y crea una instancia de la clase encargada de hacer la conexión
		Conexion conex = new Conexion();

		try {
			//sentencia que se ejecutara en la base de datos
			Statement estatuto = conex.getConnection().createStatement();
					
			//String que contiene la sentencia insert a ejecutar
			String sentencia = "INSERT INTO productos VALUES(" 
					+ prov.getCodigo_producto() + "," + "'"
					+ prov.getIvacompra() + "'," + "'" 
					+ prov.getNitproveedor() + "'," + "'"
					+ prov.getNombre_producto()+ "'," + "'"
					+ prov.getPrecio_compra()+ "'," + "'"
					+ prov.getPrecio_venta() + "'" 
					+ ");";
				
			//se ejecuta la sentencia en la base de datos
			estatuto.executeUpdate(sentencia);
			//impresión en consola para verificación 
			System.out.println("Registrado " + sentencia);
			//cerrando la sentencia y la conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el producto");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo insertar el producto");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	/**
	 * permite consultar el Producto asociado al codigo_producto enviado como parametro
	 * 
	 * 
	 * @param documento
	 * @return
	 */
	public ArrayList<ProductoVO> consultarProducto(Integer codigo_producto) {	
		//lista que contendra el o los Productos obtenidos
		ArrayList<ProductoVO> listaproductos = new ArrayList<ProductoVO>();		
		//instancia de la conexión
		Conexion conex = new Conexion();
		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection()
					.prepareStatement("SELECT * FROM productos where codigo_producto = ? ");		
			// se cambia el comodin ? por el dato que ha llegado en el parametro de la funcion
			consulta.setInt(1, codigo_producto);			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();			
			//cree un objeto basado en la clase entidad con los datos encontrados
			if (res.next()) {
				ProductoVO Producto = new ProductoVO();
				
				Producto.setCodigo_producto(Integer.parseInt(res.getString("codigo_producto")));
				Producto.setIvacompra(Double.parseDouble(res.getString("ivacompra")));
				Producto.setNitproveedor(Integer.parseInt(res.getString("nitproveedor")));
				Producto.setNombre_producto(res.getString("nombre_producto"));
				Producto.setPrecio_compra(Double.parseDouble(res.getString("precio_compra")));
				Producto.setPrecio_venta(Double.parseDouble(res.getString("precio_venta")));
				
				

				listaproductos.add(Producto);
			}
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el Producto");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo consultar el Producto");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}
		return listaproductos;
	}

	/**
	 * permite consultar la lista de todos los Productos
	 * 
	 * @return
	 */
	public ArrayList<ProductoVO> listaDeProductos() {
		//lista que contendra el o los Productos obtenidos
		ArrayList<ProductoVO> listaproductos = new ArrayList<ProductoVO>();
		
		//instancia de la conexión
		Conexion conex = new Conexion();

		try {
			//prepare la sentencia en la base de datos
			PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM productos");
			
			//ejecute la sentencia
			ResultSet res = consulta.executeQuery();
			
			//cree un objeto para cada encontrado en la base de datos basado en la clase entidad con los datos encontrados
			while (res.next()) {
				
				ProductoVO Producto = new ProductoVO();
			
				Producto.setCodigo_producto(Integer.parseInt(res.getString("codigo_producto")));
				Producto.setIvacompra(Double.parseDouble(res.getString("ivacompra")));
				Producto.setNitproveedor(Integer.parseInt(res.getString("nitproveedor")));
				Producto.setNombre_producto(res.getString("nombre_producto"));
				Producto.setPrecio_compra(Double.parseDouble(res.getString("precio_compra")));
				Producto.setPrecio_venta(Double.parseDouble(res.getString("precio_venta")));
				

				listaproductos.add(Producto);
				
			}
			
			//cerrar resultado, sentencia y conexión
			res.close();
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudieron consultar todos los Productos");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudieron consultar todos los Productos");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

		return listaproductos;
	}

	
	public void eliminarProducto(Integer codigo_producto) {
		
		//instancia de la conexion
		Conexion conex = new Conexion();

		try {
			//sentencia inicializada
			Statement consulta = conex.getConnection().createStatement();
			
			//preparando sentencia a realizar
			String sentencia = "delete from productos where codigo_producto=" + codigo_producto + ";";
			
			//impresion de verificación
			System.out.println("Registrado " + sentencia);
			
			//ejecutando la sentencia en la base de datos
			consulta.execute(sentencia);
			
			//cerrando sentencia y conexión
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el Producto");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el Producto");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}

	public void actualizarProducto(ProductoVO producto) {
		
		//instancia de conexion
		Conexion conex = new Conexion();

		try {
			//inicializando sentencia
			Statement estatuto = conex.getConnection().createStatement();
			
			//String con la sentencia a ejecutar
			String sentencia = "UPDATE productos "
					+ "SET codigo_producto = '"+producto.getCodigo_producto()+"',"
					+ "ivacompra = '"+producto.getIvacompra()+"',"
					+ "nitproveedor = '"+producto.getNitproveedor()+"',"
					+ "nombre_producto = '"+producto.getNombre_producto()+"',"
					+ "precio_compra = '"+producto.getPrecio_compra()+"',"
					+ "precio_venta = '"+producto.getPrecio_venta()+"' "
					+ "WHERE codigo_producto = "+producto.getCodigo_producto()+";";
			
			//ejecuta la sentencia 
			estatuto.executeUpdate(sentencia);
			
			//verificación por consola de la sentencia
			System.out.println("Registrado " + sentencia);
			
			//cerrando sentencia y conexión
			estatuto.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo actualizar el Producto");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar el Producto");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}
	
	
	
	public void eliminarTodoProducto() {
		
		//instancia de la conexion
		Conexion conex = new Conexion();

		try {
			//sentencia inicializada
			Statement consulta = conex.getConnection().createStatement();
			
			//preparando sentencia a realizar
			String sentencia = "delete from productos;";
			
			//impresion de verificación
			System.out.println("Registrado " + sentencia);
			
			//ejecutando la sentencia en la base de datos
			consulta.execute(sentencia);
			
			//cerrando sentencia y conexión
			consulta.close();
			conex.desconectar();

		} catch (SQLException e) {
			//si hay un error en el sql mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar todos los productos");
			System.out.println(e.getMessage());
			System.out.println(e.getErrorCode());
		} catch (Exception e) {
			//si hay cualquier otro error mostrarlo
			System.out.println("------------------- ERROR --------------");
			System.out.println("No se pudo eliminar todos los productos");
			System.out.println(e.getMessage());
			System.out.println(e.getLocalizedMessage());
		}

	}
	
	
	
}