package com.day3.Library.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.day3.Library.model.Book;

public interface BookRepository extends JpaRepository<Book, Long> {
}
