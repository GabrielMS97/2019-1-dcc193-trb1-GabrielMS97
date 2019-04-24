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
		repSede.save(new Sede("Sede JF", "Minas Gerais", "Juiz de Fora", "Poço Rico", "(32)1234-4321", "www.seila.com.br"));
		repSede.save(new Sede("Sede RJ", "Rio de Janeiro", "Rio de Janeiro", "Irajá", "(21)1234-4321", "www.seila.com.br"));
		System.out.println(repSede.findAll().toString());

		MembroRepository repMembros = ctx.getBean(MembroRepository.class);
		repMembros.save(new Membro("José", "Contador", "jose@jose", "20-04-2017", null));
		repMembros.save(new Membro("Zeca", "Diretor", "zeca@zeca", "09-06-2015", "09-02-2019"));

		AtividadeRepository repAtividades = ctx.getBean(AtividadeRepository.class);
		repAtividades.save(new Atividade("Atividade 1", "DescriçãoDescriçãoDescrição", "21-12-2019", "23-04-2020", 4,4,4,4));
		repAtividades.save(new Atividade("Atividade 2", "DescriçãoDescriçãoDescrição", "01-02-2003", "04-05-2006", 7,8,9,10));
	}

}
