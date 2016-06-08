package dao;


import java.util.List;
import modelo.TipoDeVeiculo;

public interface TipoDeVeiculoDao {
	
	public void salvar(TipoDeVeiculo tipoDeVeiculo);
	public void atualizar(TipoDeVeiculo tipoDeVeiculo);
	public void remover(TipoDeVeiculo tipoDeVeiculo);
	public List<TipoDeVeiculo> getListAll();
	public TipoDeVeiculo findById(int id);
        public List<TipoDeVeiculo> findByNome(String nome);
}
