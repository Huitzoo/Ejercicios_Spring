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
@Table(name="t_perfil_docente")
public class PerfilDocente implements Serializable {

	private static final long serialVersionUID = -3009157732242241606L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "conocimientos")
	private String conocimientos;
	@Column(name = "experiencia_laboral")
	private String experiencia_laboral;
	@Column(name = "habilidades")
	private String habilidades;
	@Column(name = "actitudes")
	private String actitudes;
	
	public PerfilDocente(String[] datos) {
		super();
		this.conocimientos = datos[0];
		this.experiencia_laboral = datos[1];
		this.habilidades = datos[2];
		this.actitudes = datos[3];
	}
	public PerfilDocente() {
		
	}
	public long getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getConocimientos() {
		return conocimientos;
	}
	public void setConocimientos(String conocimientos) {
		this.conocimientos = conocimientos;
	}
	public String getExperiencia_laboral() {
		return experiencia_laboral;
	}
	public void setExperiencia_laboral(String experiencia_laboral) {
		this.experiencia_laboral = experiencia_laboral;
	}
	public String getHabilidades() {
		return habilidades;
	}
	public void setHabilidades(String habilidades) {
		this.habilidades = habilidades;
	}
	public String getActitudes() {
		return actitudes;
	}
	public void setActitudes(String actitudes) {
		this.actitudes = actitudes;
	}
	
	
}
