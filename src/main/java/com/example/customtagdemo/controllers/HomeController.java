package com.example.customtagdemo.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/exam1")
    public String exam(Model model) {
        return "exam1";
    }

    @GetMapping("/exam2")
    public String exam2(Model model) {
        return "exam2";
    }

    @GetMapping("/exam3")
    public String exam3_sample(Model model) {
        model.addAttribute("arg1", "カスタムタグでh1にしたよ☆");
        return "sample_customtag";
    }

    @GetMapping("/exam4")
    public String exam4(Model model) {
        model.addAttribute("headers", "ID, Name, Email");
        model.addAttribute("data", List.of(
                List.of("1", "Alice", "alice@example.com"),
                List.of("2", "Bob", "bob@example.com"),
                List.of("3", "Charlie", "charlie@example.com")));
        return "exam4";
    }


}
