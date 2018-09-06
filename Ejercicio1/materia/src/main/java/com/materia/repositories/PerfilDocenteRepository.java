package com.materia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.materia.models.PerfilDocente;

@Repository
public interface PerfilDocenteRepository extends JpaRepository<PerfilDocente, Long>  {	

}
