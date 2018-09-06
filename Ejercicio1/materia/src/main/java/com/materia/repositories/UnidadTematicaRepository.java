package com.materia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.materia.models.UnidadTematica;


@Repository
public interface UnidadTematicaRepository extends JpaRepository<UnidadTematica, Long>  {

	
}
