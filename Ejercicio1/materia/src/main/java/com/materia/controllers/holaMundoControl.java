package com.materia.controllers;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.json.JSONObject;

import com.materia.models.Evaluacion;
import com.materia.models.Materia;
import com.materia.models.PerfilDocente;
import com.materia.models.ComiteRevisor;
import com.materia.models.Contenido;
import com.materia.models.EncabezadoBasico;
import com.materia.models.Practica;
import com.materia.models.Referencia;
import com.materia.models.RelUtPractica;
import com.materia.models.UnidadTematica;

import com.materia.repositories.MateriaRepository;
import com.materia.repositories.PerfilDocenteRepository;
import com.materia.repositories.EvaluacionRepository;
import com.materia.repositories.ComiteRevisorRepository;
import com.materia.repositories.ContenidoRepository;
import com.materia.repositories.EncabezadoBasicoRepository;
import com.materia.repositories.PracticaRepository;
import com.materia.repositories.ReferenciaRepository;
import com.materia.repositories.RelUtPracticaRepository;
import com.materia.repositories.UnidadTematicaRepository;


@Controller
public class holaMundoControl {

	@Autowired
	private MateriaRepository consultaMateria;
	@Autowired
	private EvaluacionRepository consultaEvaluacion;
	@Autowired
	private PerfilDocenteRepository consultaDocente;
	@Autowired
	private ComiteRevisorRepository consultaComiteRevisor;
	@Autowired
	private ContenidoRepository consultaContenido;
	@Autowired
	private EncabezadoBasicoRepository consultaEncabezado;
	@Autowired
	private PracticaRepository consultaPractica;
	@Autowired
	private ReferenciaRepository consultaReferencia;
	@Autowired
	private RelUtPracticaRepository consultaRel;
	@Autowired
	private UnidadTematicaRepository consultaUnidad;
	
	
	@Value("${mensaje.ms1}")
	String ms1;
	@Value("${mensaje.ms2}")
	String ms2;
	@Value("${mensaje.ms3}")
	String ms3;
	@Value("${mensaje.ms4}")
	String ms4;
	@Value("${mensaje.ms5}")
	String ms5;
	@Value("${mensaje.ms6}")
	String ms6;
	@RequestMapping("/agregar_materia")
	
	public String registrar() {
		
		return "registrar";
	}	
	
	@RequestMapping("/")
	public String welcome() {
		
		return "vista";
	}	
	
	
    @RequestMapping(value = "/verificar", method = RequestMethod.POST)
    public @ResponseBody boolean verificar(@RequestBody String materia,Map<String, Object> model,HttpServletRequest request, HttpServletResponse response) {
    	JSONObject datosJ = new JSONObject(materia);
    	Map<String, Object> datos = datosJ.toMap();
    	System.out.println(datos);
    	if(consultaMateria.findByNombre_Materia((String)datos.get("materia")).isEmpty()) {
    		HttpSession session = request.getSession();
    		session.setAttribute("materia",datos.get("materia"));
        	return true;	
    	}
		return false;
	}
    @RequestMapping(value = "/registrar_todo")
    public String registrarTodo(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String materia = (String)session.getAttribute("materia");
		session.setAttribute("materia",materia);
		return "agregar_todo";
    }
    
    @RequestMapping(value = "/agregar_todo", method = RequestMethod.POST)
    public @ResponseBody boolean agregarMateria(@RequestBody String datos,HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		JSONObject datosJ = new JSONObject(datos);
		String nombre_materia = (String)session.getAttribute("materia");
    	Map<String, Object> data = datosJ.toMap();
    	System.out.println(data);
    	String datosDocenteAux = data.get("datosDocente").toString();
    	String datosDocente[] = datosDocenteAux.split(",");
    	System.out.println(datosDocente);
    	String datosMateriaAux = data.get("datosMateria").toString();
    	String datosMateria[] = datosMateriaAux.split(",");
    	String datosEvaluacionAux = data.get("datosEvaluacion").toString();
    	String datosEvaluacion[] = datosEvaluacionAux.split(",");    			
		String datosComiteRevisorAux = data.get("datosComiteRevisor").toString();
    	String datosComiteRevisor[] = datosComiteRevisorAux.split(",");
    	String datosEncabezadoBasicoAux = data.get("datosEncabezadoBasico").toString();
    	String datosEncabezadoBasico[] = datosEncabezadoBasicoAux.split(",");
    	String datosUnidadAux = data.get("datosUnidad").toString();
    	String datosUnidad[] = datosUnidadAux.split(",");    	
    	String datosContenidosAux = data.get("datosContenidos").toString();
    	String datosContenidos[] = datosContenidosAux.split(",");
    	String datosPracticaAux = data.get("datosPractica").toString();
    	String datosPractica[] = datosPracticaAux.split(",");
    	String datosReferenciaAux = data.get("datosReferencia").toString();
    	String datosReferencia[] = datosReferenciaAux.split(",");    	
    	
		Evaluacion evaluacion = new Evaluacion(datosEvaluacion);
		consultaEvaluacion.save(evaluacion);
		PerfilDocente docente = new PerfilDocente(datosDocente);
		consultaDocente.save(docente);
		ComiteRevisor comiteRevisor = new ComiteRevisor(datosComiteRevisor);
		consultaComiteRevisor.save(comiteRevisor);
		Materia materia = new Materia(nombre_materia,datosMateria,docente,evaluacion,comiteRevisor);
		consultaMateria.save(materia);
		EncabezadoBasico encabezado = new EncabezadoBasico(datosEncabezadoBasico,materia);
		consultaEncabezado.save(encabezado);
		Contenido contenido = new Contenido(datosContenidos);
		consultaContenido.save(contenido);
    	Practica practica = new Practica(datosPractica);
    	consultaPractica.save(practica);
    	Referencia referencia = new Referencia(datosReferencia,materia);
    	consultaReferencia.save(referencia);
    	UnidadTematica unidad = new UnidadTematica(datosUnidad,contenido,materia);
    	consultaUnidad.save(unidad);
    	RelUtPractica rel = new RelUtPractica(unidad,practica);
    	consultaRel.save(rel);
    	
		return true;
    }
  
}


