package com.example.customtagdemo.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("message1", "Hello, World!");
        model.addAttribute("message2", "message2です");
        return "home";
    }

    @GetMapping("/exam1")
    public String exam(Model model) {
        return "exam1";
    }

    @GetMapping("/exam2")
    public String exam2(Model model) {
        return "exam2";
    }

    @GetMapping("/exam3")
    public String exam3(Model model) {
        model.addAttribute("headers", "ID, Name, Email");
        model.addAttribute("data", List.of(
                List.of("1", "Alice", "alice@example.com"),
                List.of("2", "Bob", "bob@example.com"),
                List.of("3", "Charlie", "charlie@example.com")));
        return "exam3";
    }
}
