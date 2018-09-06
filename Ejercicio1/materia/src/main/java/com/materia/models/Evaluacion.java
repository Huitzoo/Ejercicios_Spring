package com.materia.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="t_evaluacion")
public class Evaluacion implements Serializable {

	private static final long serialVersionUID = -3009157732242241606L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "practica")
	private String practica;
	@Column(name = "teorica")
	private String teorica;
	
	public Evaluacion(String[] datos) {
		super();
		this.practica = datos[0];
		this.teorica = datos[1];
	}
	public Evaluacion() {
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPractica() {
		return practica;
	}
	public void setPractica(String practica) {
		this.practica = practica;
	}
	public String getTeorica() {
		return teorica;
	}
	public void setTeorica(String teorica) {
		this.teorica = teorica;
	}
	
		
}
