package com.edu.unbosque.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edu.unbosque.tiendagenerica.DAO.ProveedorDAO;
import com.edu.unbosque.tiendagenerica.DTO.ProveedorVO;

@RestController //esta es una clase REST

public class ProveedoresController {

	@PostMapping("/registrarproveedor")
	public void registrarProveedor(ProveedorVO proveedor) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.registrarProveedor(proveedor);
	}

	@GetMapping("/consultarProveedor")
	public ArrayList<ProveedorVO> consultarProveedor(String nit_proveedor) {
		ProveedorDAO Dao = new ProveedorDAO();
		return Dao.consultarProveedor(nit_proveedor);
	}

	@GetMapping("/listarproveedor")
	public ArrayList<ProveedorVO> listaDeProveedores() {
		ProveedorDAO Dao = new ProveedorDAO();
		return Dao.listaDeProveedores();
	}
	@DeleteMapping("/eliminarproveedor")
	public void eliminarProveedor(Integer nit_proveedor) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.eliminarProveedor(nit_proveedor);
	}
	
	@PutMapping("/actualizarproveedor")
	public void actualizarProveedor(ProveedorVO proveedor) {
		ProveedorDAO Dao = new ProveedorDAO();
		Dao.actualizarproveedor(proveedor);
	}

}
