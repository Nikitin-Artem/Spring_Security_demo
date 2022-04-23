package org.example.noxml.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

    @GetMapping("/")
    public String showHome(){
        return "home";
    }

    // Manager home page
    @GetMapping("/leaders")
    public String showLeaders(){ return "leaders"; }

    // Admin home page
    @GetMapping("/system")
    public String showSystems(){ return "systems"; }
}
