package com.day3.Library.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.day3.Library.model.Borrower;

public interface BorrowerRepository extends JpaRepository<Borrower, Long> {
}
