package com.devcases.springboot.crud.library.repository;

import com.devcases.springboot.crud.library.model.Book;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookRepository extends CrudRepository<Book, Long> {

}
