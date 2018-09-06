package com.materia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.materia.models.Referencia;


@Repository
public interface ReferenciaRepository extends JpaRepository<Referencia, Long>  {

	
}
