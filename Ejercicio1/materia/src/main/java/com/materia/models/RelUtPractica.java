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
@Table(name="t_rel_ut_practica")
public class RelUtPractica implements Serializable {

	private static final long serialVersionUID = -3009157732242241606L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@ManyToOne
	@JoinColumn(name="id_ut_id")
	private UnidadTematica id_ut;
	
	@ManyToOne
	@JoinColumn(name="id_practica_id")
	private Practica id_practica;
	
	
	
	public RelUtPractica(UnidadTematica id_ut, Practica id_practica) {
		super();
		this.id_ut = id_ut;
		this.id_practica = id_practica;
	}
	
	public UnidadTematica getId_ut() {
		return id_ut;
	}
	public void setId_ut(UnidadTematica id_ut) {
		this.id_ut = id_ut;
	}
	public Practica getId_practica() {
		return id_practica;
	}
	public void setId_practica(Practica id_practica) {
		this.id_practica = id_practica;
	}
	
}
