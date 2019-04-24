package br.ufjf.dcc193.trb1.repositories;

import br.ufjf.dcc193.trb1.models.Atividade;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AtividadeRepository extends JpaRepository<Atividade,Long> {
}