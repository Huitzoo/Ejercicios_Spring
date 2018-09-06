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
@Table(name="t_comite_revisor")
public class ComiteRevisor implements Serializable {

	private static final long serialVersionUID = -3009157732242241606L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name = "diseniador")
	private String diseniador;
	@Column(name = "revisor")
	private String revisor;
	@Column(name = "autorizador")
	private String autorizador;
	
	public ComiteRevisor(String[] datos) {
		super();
		this.diseniador = datos[0];
		this.revisor = datos[1];
		this.autorizador = datos[2];
	}
	
	public String getDiseniador() {
		return diseniador;
	}
	public void setDiseniador(String diseniador) {
		this.diseniador = diseniador;
	}
	public String getRevisor() {
		return revisor;
	}
	public void setRevisor(String revisor) {
		this.revisor = revisor;
	}
	public String getAutorizador() {
		return autorizador;
	}
	public void setAutorizador(String autorizador) {
		this.autorizador = autorizador;
	}
	
	
}
