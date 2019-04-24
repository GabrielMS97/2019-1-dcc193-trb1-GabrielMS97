package br.ufjf.dcc193.trb1.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.ufjf.dcc193.trb1.models.Atividade;
import br.ufjf.dcc193.trb1.repositories.AtividadeRepository;
import br.ufjf.dcc193.trb1.repositories.SedeRepository;

@Controller
public class AtividadeController {
    @Autowired
    private SedeRepository repSede;
    @Autowired
    private AtividadeRepository repAtividade;
    
    @RequestMapping("atividades.html")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("atividades");
        List<Atividade> atividades = repAtividade.findAll();
        mv.addObject("atividades", atividades);
        return mv;
    }

    @RequestMapping("cadastro-atividades.html")
    public String formularioCadAtividades() {
        return "cadastro-atividades";
    }

    @RequestMapping("result-cadastroAtividades.html")
    public ModelAndView resultCadAtividades(Atividade a) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("atividades");
        repAtividade.save(a);
        List<Atividade> atividades = repAtividade.findAll();
        mv.addObject("atividades", atividades);
        return mv;
    }

    @RequestMapping("excluir-atividades.html")
    public ModelAndView excluirAtividades(Atividade a) {
        ModelAndView mv = new ModelAndView();
        repAtividade.deleteById(a.getId());
        mv.addObject("atividades", repAtividade.findAll());
        mv.setViewName("atividades");
        return mv;
    }

    @RequestMapping("editar-atividades.html")
    public ModelAndView editarAtividade(Atividade a) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("atividade", repAtividade.getOne(a.getId()));
        mv.setViewName("editar-atividades");
        return mv;
    }

}