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
@Table(name="t_encabezado_basico")
public class EncabezadoBasico implements Serializable {

	private static final long serialVersionUID = -3009157732242241606L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name="nivel")
    private int nivel;
	@ManyToOne
	@JoinColumn(name="materia_id")
	private Materia materia;
	@Column(name="modalidad")
	private String modalidad;
	@Column(name="tipo")
	private String tipo;
	@Column(name="vigencia")
	private String vigencia;
	@Column(name="creditos")
	private String creditos;
	@Column(name="tiempos")
	private String tiempos;
	@Column(name="academia")
	private String academia;
	@Column(name="especialidad")
	private String especialidad;
	
	public EncabezadoBasico(String[] datos,Materia materia) {
		super();
		this.materia = materia;
		this.nivel = Integer.parseInt(datos[0]);
		this.modalidad = datos[1];
		this.tipo = datos[2];
		this.vigencia = datos[3];
		this.creditos = datos[4];
		this.tiempos = datos[5];
		this.academia = datos[6];
		this.especialidad = datos[7];
	}
	
	public int getNivel() {
		return nivel;
	}
	public void setNivel(int nivel) {
		this.nivel = nivel;
	}
	public Materia getMateria() {
		return materia;
	}
	public void setMateria(Materia materia) {
		this.materia = materia;
	}
	public String getModalidad() {
		return modalidad;
	}
	public void setModalidad(String modalidad) {
		this.modalidad = modalidad;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getVigencia() {
		return vigencia;
	}
	public void setVigencia(String vigencia) {
		this.vigencia = vigencia;
	}
	public String getCreditos() {
		return creditos;
	}
	public void setCreditos(String creditos) {
		this.creditos = creditos;
	}
	public String getTiempos() {
		return tiempos;
	}
	public void setTiempos(String tiempos) {
		this.tiempos = tiempos;
	}
	public String getAcademia() {
		return academia;
	}
	public void setAcademia(String academia) {
		this.academia = academia;
	}
	public String getEspecialidad() {
		return especialidad;
	}
	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}
	
	
}
