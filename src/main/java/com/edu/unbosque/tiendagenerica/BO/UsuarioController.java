package com.edu.unbosque.tiendagenerica.BO;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.edu.unbosque.tiendagenerica.DAO.UsuarioDAO;
import com.edu.unbosque.tiendagenerica.DTO.UsuarioVO;


@RestController //esta es una clase REST
public class UsuarioController {
	
	/*
	 * @GetMapping obtener o buscar
	 * @PostMapping insertar o agregar
	 * @PutMapping modificar o actualizar
	 * @DeleteMapping eliminar o borrar
	 * */

	@PostMapping("/registrarusuario")
	public void registrarUsuario(UsuarioVO user) {
		UsuarioDAO Dao = new UsuarioDAO();
		Dao.registrarUsuario(user);
	}

	@GetMapping("/consultarusuario")
	public ArrayList<UsuarioVO> consultarUsuarios(String cedula_usuario) {
		UsuarioDAO Dao = new UsuarioDAO();
		return Dao.consultarUsuario(cedula_usuario);
	}

	@GetMapping("/listarusuarios")
	public ArrayList<UsuarioVO> listaDeUsuarios() {
		UsuarioDAO Dao = new UsuarioDAO();
		return Dao.listaDeUsuarios();
	}
	@DeleteMapping("/eliminarusuario")
	public void eliminarUsuario(Integer cedula_usuario) {
		UsuarioDAO Dao = new UsuarioDAO();
		Dao.eliminarUsuario(cedula_usuario);
	}
	
	@PutMapping("/actualizarusuarios")
	public void actualizarUsuario(UsuarioVO user) {
		UsuarioDAO Dao = new UsuarioDAO();
		Dao.actualizarUsuario(user);
	}


}
