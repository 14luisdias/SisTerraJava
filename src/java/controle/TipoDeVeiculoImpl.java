package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.ConnectionFactory;
 
import dao.TipoDeVeiculoDao;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.TipoDeVeiculo;



public class TipoDeVeiculoImpl implements TipoDeVeiculoDao {
    
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(TipoDeVeiculo tipoDeVeiculo) {
		try {
			String sql = "insert into tipoveiculo "
                                + "(destipo) values(?)";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, tipoDeVeiculo.getNome());
                        stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(TipoDeVeiculo  tipoDeVeiculo) {
		// TODO Auto-generated method stub
            String sql = "update tipoveiculo set destipo = ? "
                    + "where codtipo = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, tipoDeVeiculo.getNome());
                stmt.setInt(2, tipoDeVeiculo.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(TipoDeVeiculo tipoDeVeiculo) {
		// TODO Auto-generated method stub
            String sql = "delete from tipoveiculo where codtipo = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, tipoDeVeiculo.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<TipoDeVeiculo> getListAll() {
		List<TipoDeVeiculo> list = new ArrayList<TipoDeVeiculo>();
		try {
			String sql = "select codtipo, destipo from tipoveiculo";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				TipoDeVeiculo tipoDeVeiculo = new TipoDeVeiculo();
				tipoDeVeiculo.setId(rs.getInt(1));
				tipoDeVeiculo.setNome(notNull(rs.getString(2)));
                               				
				list.add(tipoDeVeiculo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
        
    
    public List<TipoDeVeiculo> findByNome(String nome){
         List<TipoDeVeiculo> list = new ArrayList<TipoDeVeiculo>();    
        try{
            String sql= "SELECT codtipo,destipo from tipoveiculo where destipo LIKE'" + nome+"%'";
          
            stmt = conn.prepareStatement(sql);
            rs= stmt.executeQuery();
        
            while (rs.next()) {
               TipoDeVeiculo tipoDeVeiculo = new TipoDeVeiculo(); 
               tipoDeVeiculo.setId(rs.getInt(1));
               tipoDeVeiculo.setNome(notNull(rs.getString(2)));
               
               list.add(tipoDeVeiculo);
              
          }
             
	   }catch (SQLException e) {
		   e.printStackTrace();
	   }
           return list;
        }    

	@Override
	public TipoDeVeiculo findById(int id) {
		String sql = "select codtipo, destipo from tipoveiculo where codtipo = ?";
                TipoDeVeiculo tipoDeVeiculo = new TipoDeVeiculo();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    tipoDeVeiculo.setId(rs.getInt(1));
                    tipoDeVeiculo.setNome(notNull(rs.getString(2)));
                   
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return tipoDeVeiculo;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

  
}
