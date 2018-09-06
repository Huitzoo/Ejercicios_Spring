package com.materia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.materia.models.EncabezadoBasico;


@Repository
public interface EncabezadoBasicoRepository extends JpaRepository<EncabezadoBasico, Long>  {

	
}
