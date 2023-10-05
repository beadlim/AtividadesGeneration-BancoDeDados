package com.gamefusion.lojadegames.repository;

import java.util.List;

import org.springframework.data.repository.query.Param;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gamefusion.lojadegames.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {

	   public List<Categoria> findAllByGeneroContainingIgnoreCase(@Param("genero") String genero);

	} 


