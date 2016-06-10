package dao;


import java.util.List;
import modelo.Rota;
public interface RotaDao {
	
	public void salvar(Rota rota);
	public void atualizar(Rota rota);
	public void remover(Rota rota);
	public List<Rota> getListAll();
	public Rota findById(int id);
        public List<Rota> findBySaida(int saida);
        public List<Rota> findByDestino(int destino);
        public List<Rota> findBySaidaDestino(int saida, int destino);
}
