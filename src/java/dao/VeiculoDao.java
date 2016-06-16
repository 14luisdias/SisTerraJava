package dao;


import java.util.List;
import modelo.Veiculo;
public interface VeiculoDao {
	
	public void salvar(Veiculo veiculo);
	public void atualizar(Veiculo veiculo);
	public void remover(Veiculo veiculo);
	public List<Veiculo> getListAll();
	public Veiculo findById(int id);
        public List<Veiculo> findByPlaca(String placa);
        public List<Veiculo> findByTipo(int tipo);
        public List<Veiculo> findByMotorista(int motorista);
        
}
