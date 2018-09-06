package com.materia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.materia.models.Practica;


@Repository
public interface PracticaRepository extends JpaRepository<Practica, Long>  {

	
}
