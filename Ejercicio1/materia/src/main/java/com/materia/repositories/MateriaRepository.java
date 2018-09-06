package com.materia.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.materia.models.Materia;

@Repository
public interface MateriaRepository extends JpaRepository<Materia, Long>  {	
	@Query("SELECT nombre_materia FROM Materia where nombre_materia = :materia") 
	List<Materia> findByNombre_Materia(String materia);

}
