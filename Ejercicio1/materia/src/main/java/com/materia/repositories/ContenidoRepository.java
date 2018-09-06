package com.materia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.materia.models.Contenido;


@Repository
public interface ContenidoRepository extends JpaRepository<Contenido, Long>  {

	
}
