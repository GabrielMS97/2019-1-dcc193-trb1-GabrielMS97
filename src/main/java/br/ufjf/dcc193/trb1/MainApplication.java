package br.ufjf.dcc193.trb1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import br.ufjf.dcc193.trb1.models.Atividade;
import br.ufjf.dcc193.trb1.models.Membro;
import br.ufjf.dcc193.trb1.models.Sede;
import br.ufjf.dcc193.trb1.repositories.AtividadeRepository;
import br.ufjf.dcc193.trb1.repositories.MembroRepository;
import br.ufjf.dcc193.trb1.repositories.SedeRepository;

@SpringBootApplication
public class MainApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext ctx = SpringApplication.run(MainApplication.class, args);
		SedeRepository repSede = ctx.getBean(SedeRepository.class);
		Sede s1 = new Sede("Sede JF", "Minas Gerais", "Juiz de Fora", "Poço Rico", "(32)1234-4321", "www.sedejf.com.br");
		Sede s2 = new Sede("Sede RJ", "Rio de Janeiro", "Rio de Janeiro", "Irajá", "(21)1234-4321", "www.sederj.com.br");
		repSede.save(s1);
		repSede.save(s2);
		System.out.println(repSede.findAll().toString());

		MembroRepository repMembros = ctx.getBean(MembroRepository.class);
		Membro m1 = new Membro("José", "Contador", "jose@jose", "20-04-2017", null, s1);
		Membro m2 = new Membro("Joaquim", "Diretor", "joaquim@joaquim", "09-06-2015", "09-02-2019", s2);
		repMembros.save(m1);
		repMembros.save(m2);

		AtividadeRepository repAtividades = ctx.getBean(AtividadeRepository.class);
		Atividade a1 = new Atividade("Atividade 1", "DescriçãoDescriçãoDescrição", s1, "21-12-2019", "23-04-2020", 4,4,4,4);
		Atividade a2 = new Atividade("Atividade 2", "DescriçãoDescriçãoDescrição", s2, "01-02-2003", "04-05-2006", 7,8,9,10);
		repAtividades.save(a1);
		repAtividades.save(a2);
	}

}
