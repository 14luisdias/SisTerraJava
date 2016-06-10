package dao;


import java.util.List;
import modelo.local;
public interface LocalDao {
	
	public void salvar(local local);
	public void atualizar(local local);
	public void remover(local local);
	public List<local> getListAll();
	public local findById(int id);
        public List<local> findByNome(String nome);
}
