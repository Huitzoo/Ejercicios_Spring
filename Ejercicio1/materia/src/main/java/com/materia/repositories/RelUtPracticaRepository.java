package com.materia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.materia.models.RelUtPractica;


@Repository
public interface RelUtPracticaRepository extends JpaRepository<RelUtPractica, Long>  {

	
}
