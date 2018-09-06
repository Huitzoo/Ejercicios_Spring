package com.materia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.materia.models.Evaluacion;


@Repository
public interface EvaluacionRepository extends JpaRepository<Evaluacion, Long>  {

	
}
