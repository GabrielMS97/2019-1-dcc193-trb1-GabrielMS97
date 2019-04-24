package br.ufjf.dcc193.trb1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import br.ufjf.dcc193.trb1.models.Sede;
import br.ufjf.dcc193.trb1.repositories.SedeRepository;

@SpringBootApplication
public class MainApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext ctx = SpringApplication.run(MainApplication.class, args);
		SedeRepository repSede = ctx.getBean(SedeRepository.class);
		repSede.save(new Sede("Sede JF", "Minas Gerais", "Juiz de Fora", "Poço Rico", "(32)1234-4321", "www.seila.com.br"));
		repSede.save(new Sede("Sede RJ", "Rio de Janeiro", "Rio de Janeiro", "Irajá", "(21)1234-4321", "www.seila.com.br"));
		System.out.println(repSede.findAll().toString());
	}

}
