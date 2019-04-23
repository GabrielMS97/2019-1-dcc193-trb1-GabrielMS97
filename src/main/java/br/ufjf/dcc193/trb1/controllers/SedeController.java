package br.ufjf.dcc193.trb1.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SedeController {
    @RequestMapping("sedes.html")
    public String home() {
        return "sedes";
    }

}