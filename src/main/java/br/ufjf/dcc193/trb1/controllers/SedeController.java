package br.ufjf.dcc193.trb1.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.ufjf.dcc193.trb1.models.Sede;
import br.ufjf.dcc193.trb1.repositories.SedeRepository;

@Controller
public class SedeController {
    @Autowired
    SedeRepository repSede;

    @RequestMapping("sedes.html")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("sedes");
        List<Sede> sedes = repSede.findAll();
        mv.addObject("sedes", sedes);
        return mv;
    }

    @RequestMapping("cadastro-sedes.html")
    public String formularioCadSedes() {
        return "cadastro-sedes";
    }

    @RequestMapping("result-cadastroSedes.html")
    public ModelAndView resultCadSedes(Sede s) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("sedes");
        repSede.save(s);
        List<Sede> sedes = repSede.findAll();
        mv.addObject("sedes", sedes);
        return mv;
    }

}