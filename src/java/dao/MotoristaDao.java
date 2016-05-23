package dao;

import java.util.List;

import modelo.Motorista;

public interface MotoristaDao {
	
	public void salvar(Motorista motorista);
	public void atualizar(Motorista motorista);
	public void remover(Motorista motorista);
	public List<Motorista> getListAll();
	public Motorista findById(int id);
        public Motorista findByNome(String nome);
}
