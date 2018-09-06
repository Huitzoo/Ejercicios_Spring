package com.materia.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="t_materia")
public class Materia implements Serializable {

	private static final long serialVersionUID = -3009157732242241606L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	public Materia() {
		
	}

	public Materia(String nombre_materia,String[] datos,PerfilDocente docente, Evaluacion evaluacion, ComiteRevisor comite) {
		super();
		this.nombre_materia = nombre_materia;
		this.orientacion_educativa = datos[0];
		this.contenidos = datos[1];
		this.salida_lateral = datos[2];
		this.area_informacion = datos[3];
		this.intencion_educativa = datos[4];
		this.propositos = datos[5];
		this.docente = docente;
		this.evaluacion = evaluacion;
		this.comite = comite;
	}
	@Column(name = "nombre_materia")
	private String nombre_materia;
	@Column(name = "programa_academico")
	private String programa_academico;
	@Column(name = "orientacion_educativa")
	private String orientacion_educativa;
	@Column(name = "contenidos")
	private String contenidos;
	@Column(name = "salida_lateral")
	private String salida_lateral;
	@Column(name = "area_informacion")
	private String area_informacion;
	@Column(name = "intencion_educativa")
	private String intencion_educativa;
	@Column(name = "propositos")
	private String propositos;
	@ManyToOne
	@JoinColumn(name = "id_docente_id")
	private PerfilDocente docente;
	@ManyToOne
	@JoinColumn(name = "id_eval_id")
	private Evaluacion evaluacion;
	@ManyToOne
	@JoinColumn(name = "id_comite_id")
	private ComiteRevisor comite;
	
	public ComiteRevisor getComite() {
		return comite;
	}

	public void setComite(ComiteRevisor comite) {
		this.comite = comite;
	}

	public long getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre_materia() {
		return nombre_materia;
	}
	public void setNombre_materia(String nombre_materia) {
		this.nombre_materia = nombre_materia;
	}
	public String getPrograma_academico() {
		return programa_academico;
	}
	public void setPrograma_academico(String programa_academico) {
		this.programa_academico = programa_academico;
	}
	public String getOrientacion_educativa() {
		return orientacion_educativa;
	}
	public void setOrientacion_educativa(String orientacion_educativa) {
		this.orientacion_educativa = orientacion_educativa;
	}
	public String getContenidos() {
		return contenidos;
	}
	public void setContenidos(String contenidos) {
		this.contenidos = contenidos;
	}
	public String getSalida_lateral() {
		return salida_lateral;
	}
	public void setSalida_lateral(String salida_lateral) {
		this.salida_lateral = salida_lateral;
	}
	public String getArea_informacion() {
		return area_informacion;
	}
	public void setArea_informacion(String area_informacion) {
		this.area_informacion = area_informacion;
	}
	public String getIntencion_educativa() {
		return intencion_educativa;
	}
	public void setIntencion_educativa(String intencion_educativa) {
		this.intencion_educativa = intencion_educativa;
	}
	public String getPropositos() {
		return propositos;
	}
	public void setPropositos(String propositos) {
		this.propositos = propositos;
	}
	public PerfilDocente getDocente() {
		return docente;
	}
	public void setDocente(PerfilDocente docente) {
		this.docente = docente;
	}
	public Evaluacion getEvaluacion() {
		return evaluacion;
	}
	public void setEvaluacion(Evaluacion evaluacion) {
		this.evaluacion = evaluacion;
	}

	
	
}
