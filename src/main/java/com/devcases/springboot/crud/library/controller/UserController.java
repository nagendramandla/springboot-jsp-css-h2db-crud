package com.devcases.springboot.crud.library.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.devcases.springboot.crud.library.model.Book;
import com.devcases.springboot.crud.library.model.User;
import com.devcases.springboot.crud.library.service.UserService;

@Controller
public class UserController {

    private UserService service;

    @Autowired
    public UserController(UserService service) {
        this.service = service;
    }

    @GetMapping
    public String loginWelcome(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }


    @PostMapping(value = "/login", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String login(@Valid @ModelAttribute User user, BindingResult result, Model model) {
        System.out.println("I am in login page.");
        if (result.hasErrors()) {
            return "login";
        }
        
        List<User> userObj = service.findByUserNamePassword(user.getUserName(), user.getPassword());
        System.out.println("I am in login page userObj"+userObj);
        if(userObj != null && userObj.size() > 0) {
        	return "redirect:/books";
        }
        model.addAttribute("user", new User());
        model.addAttribute("errorMessage", "Please enter valid details.");
        return "login";
    }
    
    @GetMapping("/new-user")
    public String newUser(Model model) {
        System.out.println("I am in newUser.");
        model.addAttribute("user", new User());
        return "new-user";
    }
    
    @PostMapping(value = "/addUser", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String addNewBook(@Valid @ModelAttribute User user, BindingResult result, Model model) {
        System.out.println("I am in addNewBook.");
        if (result.hasErrors()) {
            return "new-user";
        }
        service.save(user);
        model.addAttribute("user", new User());
        return "login";
    }
}
