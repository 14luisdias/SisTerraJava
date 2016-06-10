package dao;


import java.util.List;
import modelo.Material;
public interface MaterialDao {
	
	public void salvar(Material material);
	public void atualizar(Material material);
	public void remover(Material material);
	public List<Material> getListAll();
	public Material findById(int id);
        public List<Material> findByNome(String nome);
}
