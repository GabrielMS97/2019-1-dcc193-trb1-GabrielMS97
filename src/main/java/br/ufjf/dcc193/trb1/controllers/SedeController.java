package br.ufjf.dcc193.trb1.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SedeController {
    @RequestMapping("sedes.html")
    public String home() {
        return "sedes";
    }

    @RequestMapping("cadastro-sedes.html")
    public String formularioCadSedes() {
        return "cadastro-sedes";
    }

    @RequestMapping("result-cadastroSedes.html")
    public ModelAndView resultCadSedes(String nome, String estado, String cidade, String bairro, String telefone, String endWeb) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("sedes");
        mv.addObject("nome", nome);
        mv.addObject("estado", estado);
        mv.addObject("cidade", cidade);
        mv.addObject("bairro", bairro);
        mv.addObject("telefone", telefone);
        mv.addObject("endWeb", endWeb);
        return mv;
    }

}