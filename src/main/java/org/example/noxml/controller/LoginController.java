package org.example.noxml.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/showMyLoginPage")
    public String showMyLoginPage() {
        return "fancy-login";
    }

    // for wrong Role exception
    @GetMapping("/access-denied")
    public String showAccessDenied(){ return "access-denied"; }
}