package br.ufjf.dcc193.trb1.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.ufjf.dcc193.trb1.models.Membro;
import br.ufjf.dcc193.trb1.repositories.MembroRepository;
import br.ufjf.dcc193.trb1.repositories.SedeRepository;

@Controller
public class MembroController {
    @Autowired
    private SedeRepository repSede;
    @Autowired
    private MembroRepository repMembro;

    @RequestMapping("membros.html")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("membros");
        List<Membro> membros = repMembro.findAll();
        mv.addObject("membros", membros);
        return mv;
    }

    @RequestMapping("cadastro-membros.html")
    public String cadMembros() {
        return "cadastro-membros";
    }

    @RequestMapping("result-cadastroMembros.html")
    public ModelAndView resultCadSedes(Membro m) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("membros");
        repMembro.save(m);
        List<Membro> membros = repMembro.findAll();
        mv.addObject("membros", membros);
        return mv;
    }

    @RequestMapping("excluir-membros.html")
    public ModelAndView excluirSedes(Membro m) {
        ModelAndView mv = new ModelAndView();
        repMembro.deleteById(m.getId());
        mv.addObject("membros", repMembro.findAll());
        mv.setViewName("membros");
        return mv;
    }

    @RequestMapping("editar-membros.html")
    public ModelAndView editarSedes(Membro m) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("membro", repMembro.getOne(m.getId()));
        mv.setViewName("editar-membros");
        return mv;
    }

}