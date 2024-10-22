package com.day3.Library.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.day3.Library.model.Author;

public interface AuthorRepository extends JpaRepository<Author, Long> {
}
