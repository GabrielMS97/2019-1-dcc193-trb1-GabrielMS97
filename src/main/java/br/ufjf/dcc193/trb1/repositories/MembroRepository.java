package br.ufjf.dcc193.trb1.repositories;

import br.ufjf.dcc193.trb1.models.Membro;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MembroRepository extends JpaRepository<Membro,Long> {
}