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
@Table(name="t_practica")
public class Practica implements Serializable {

	private static final long serialVersionUID = -3009157732242241606L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name="numero")
	private int numero;
	@Column(name="nombre_practica")
	private String nombre_practica;
	@Column(name="duracion")
    private String duracion;
	@Column(name="lugar")
    private String lugar;
	@Column(name="horas")
    private int horas;
	@Column(name="evaluacion_acreditacion")
    private String evaluacion_acreditacion;
	
	public Practica(String[] datos) {
		super();
		this.numero = Integer.parseInt(datos[0]);
		this.nombre_practica = datos[1];
		this.duracion = datos[2];
		this.lugar = datos[3];
		this.horas = Integer.parseInt(datos[4]);
		this.evaluacion_acreditacion = datos[5];
	}
	
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getNombre_practica() {
		return nombre_practica;
	}
	public void setNombre_practica(String nombre_practica) {
		this.nombre_practica = nombre_practica;
	}
	public String getDuracion() {
		return duracion;
	}
	public void setDuracion(String duracion) {
		this.duracion = duracion;
	}
	public String getLugar() {
		return lugar;
	}
	public void setLugar(String lugar) {
		this.lugar = lugar;
	}
	public int getHoras() {
		return horas;
	}
	public void setHoras(int horas) {
		this.horas = horas;
	}
	public String getEvaluacion_acreditacion() {
		return evaluacion_acreditacion;
	}
	public void setEvaluacion_acreditacion(String evaluacion_acreditacion) {
		this.evaluacion_acreditacion = evaluacion_acreditacion;
	}
	

	
}
