package dao;


import java.util.List;
import modelo.Local;
public interface LocalDao {
	
	public void salvar(Local local);
	public void atualizar(Local local);
	public void remover(Local local);
	public List<Local> getListAll();
	public Local findById(int id);
        public List<Local> findByNome(String nome);
}
