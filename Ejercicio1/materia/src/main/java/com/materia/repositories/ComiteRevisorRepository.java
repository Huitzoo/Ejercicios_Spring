package com.materia.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.materia.models.ComiteRevisor;


@Repository
public interface ComiteRevisorRepository extends JpaRepository<ComiteRevisor, Long>  {

	
}
