package com.edu.unbosque.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edu.unbosque.tiendagenerica.DAO.ProductoDAO;
import com.edu.unbosque.tiendagenerica.DTO.ProductoVO;


@RestController //esta es una clase REST
public class ProductoController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	
	@PostMapping("/registrarproducto")
	public void registrarProducto(ProductoVO producto) {
		ProductoDAO Dao = new ProductoDAO();
		Dao.registrarProducto(producto);
	}

	@GetMapping("/consultarproducto")
	public ArrayList<ProductoVO> consultarProducto(Integer codigo_producto) {
		ProductoDAO Dao = new ProductoDAO();
		return Dao.consultarProducto(codigo_producto);
	}

	@GetMapping("/listarproductos")
	public ArrayList<ProductoVO> listaDeProductos() {
		ProductoDAO Dao = new ProductoDAO();
		return Dao.listaDeProductos();
	}
	
	@DeleteMapping("/eliminarproducto")
	public void eliminarProductos(Integer codigo_producto) {
		ProductoDAO Dao = new ProductoDAO();
		Dao.eliminarProducto(codigo_producto);
	}
	
	@PutMapping("/actualizarproducto")
	public void actualizarProducto(ProductoVO producto) {
		ProductoDAO Dao = new ProductoDAO();
		Dao.actualizarProducto(producto);
	}
	
	@DeleteMapping("/eliminartodoproducto")
	public void eliminarTodoProducto() {
		ProductoDAO Dao = new ProductoDAO();
		Dao.eliminarTodoProducto();
	}


}
