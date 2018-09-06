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
@Table(name="t_unidad_tematica")
public class UnidadTematica implements Serializable {

	private static final long serialVersionUID = -3009157732242241606L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@ManyToOne
	@JoinColumn(name="materia_id")
    private Materia materia;
	@Column(name="estrategia_aprendizaje")
    private String estrategia_aprendizaje;
	@Column(name="evaluacion_aprendizaje")
    private String evaluacion_aprendizaje;
	@ManyToOne
	@JoinColumn(name="id_contenido_id")
    private Contenido id_contenido;
	
	public UnidadTematica(String[] datos, Contenido id_contenido,Materia materia) {
		super();
		this.materia = materia;
		this.estrategia_aprendizaje = datos[0];
		this.evaluacion_aprendizaje = datos[1];
		this.id_contenido = id_contenido;
	}
	public Materia getMateria() {
		return materia;
	}
	public void setMateria(Materia materia) {
		this.materia = materia;
	}
	public String getEstrategia_aprendizaje() {
		return estrategia_aprendizaje;
	}
	public void setEstrategia_aprendizaje(String estrategia_aprendizaje) {
		this.estrategia_aprendizaje = estrategia_aprendizaje;
	}
	public String getEvaluacion_aprendizaje() {
		return evaluacion_aprendizaje;
	}
	public void setEvaluacion_aprendizaje(String evaluacion_aprendizaje) {
		this.evaluacion_aprendizaje = evaluacion_aprendizaje;
	}
	public Contenido getId_contenido() {
		return id_contenido;
	}
	public void setId_contenido(Contenido id_contenido) {
		this.id_contenido = id_contenido;
	}
	

}
