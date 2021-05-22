package com.devcases.springboot.crud.library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.devcases.springboot.crud.library.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long> {

	@Query("SELECT user FROM User user WHERE user.userName = :userName and user.password = :password")
	public List<User> findByUserNamePassword(String userName, String password);
}
