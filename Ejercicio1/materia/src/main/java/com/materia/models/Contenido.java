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
@Table(name="t_contenido")
public class Contenido implements Serializable {

	private static final long serialVersionUID = -3009157732242241606L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
    @Column(name="numero")
	private int numero;
    @Column(name="nombre")
    private String nombre;
    @Column(name="horas_docente")
    private int horas_docente;
    @Column(name="horas_autonomas")
    private int horas_autonomas;
    
	public Contenido(String[] datos) {
		super();
		this.numero = Integer.parseInt(datos[0]);
		this.nombre = datos[1];
		this.horas_docente = Integer.parseInt(datos[2]);
		this.horas_autonomas = Integer.parseInt(datos[3]);
	}
	
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getHoras_docente() {
		return horas_docente;
	}
	public void setHoras_docente(int horas_docente) {
		this.horas_docente = horas_docente;
	}
	public int getHoras_autonomas() {
		return horas_autonomas;
	}
	public void setHoras_autonomas(int horas_autonomas) {
		this.horas_autonomas = horas_autonomas;
	}
	
    
    
	
}
