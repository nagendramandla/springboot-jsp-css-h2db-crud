package com.devcases.springboot.crud.library.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devcases.springboot.crud.library.model.User;
import com.devcases.springboot.crud.library.repository.UserRepository;

@Service
public class UserService {

    private UserRepository repository;

    @Autowired
    public UserService(UserRepository repository) {
        this.repository = repository;
    }

    public List<User> findAll() {
        return StreamSupport.stream(repository.findAll().spliterator(), false)
                .collect(Collectors.toList());
    }

    public Optional<User> findById(Long id) {
        return repository.findById(id);
    }

    public User save(User user) {
        return repository.save(user);
    }

    public void deleteById(Long id) {
        repository.deleteById(id);
    }
    
    public List<User> findByUserNamePassword(String userName, String password) {
    	System.out.println("I am in login page findByUserNamePassword.");
    	return repository.findByUserNamePassword(userName, password);
    }
}
