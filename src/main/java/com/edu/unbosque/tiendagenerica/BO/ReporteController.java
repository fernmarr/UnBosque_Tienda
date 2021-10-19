package com.edu.unbosque.tiendagenerica.BO;

import java.util.ArrayList;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import com.edu.unbosque.tiendagenerica.DAO.ReporteDAO;
import com.edu.unbosque.tiendagenerica.DTO.ReporteVO;


@RestController //esta es una clase REST
public class ReporteController {
	
	
	@GetMapping("/reporteventas")
	public ArrayList<ReporteVO> reporteDeVentas() {
		ReporteDAO Dao = new ReporteDAO();
		return Dao.reporteDeVentas();
	}
	
	@GetMapping("/sumatotalventas")
	public ArrayList<ReporteVO> sumaTotalVentas() {
		ReporteDAO Dao = new ReporteDAO();
		return Dao.sumaTotalVentas();
	}
	

}
