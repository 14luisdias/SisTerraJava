package dao;


import java.util.List;
import modelo.Fornecedor;

public interface FornecedorDao {
	
	public void salvar(Fornecedor fornecedor);
	public void atualizar(Fornecedor fornecedor);
	public void remover(Fornecedor fornecedor);
	public List<Fornecedor> getListAll();
	public Fornecedor findById(int id);
        public List<Fornecedor> findByNome(String nome);
}
