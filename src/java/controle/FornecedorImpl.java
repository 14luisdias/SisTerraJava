package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.ConnectionFactory;
 
import dao.FornecedorDao;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Fornecedor;



public class FornecedorImpl implements FornecedorDao {
    
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Fornecedor fornecedor) {
		try {
			String sql = "insert into fornecedor "
                                + "(nomfor) values(?)";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, fornecedor.getNome());
                        stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Fornecedor  fornecedor) {
		// TODO Auto-generated method stub
            String sql = "update fornecedor set nomfor = ? "
                    + "where codfor = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, fornecedor.getNome());
                stmt.setInt(2, fornecedor.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Fornecedor fornecedor) {
		// TODO Auto-generated method stub
            String sql = "delete from fornecedor where codfor = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, fornecedor.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Fornecedor> getListAll() {
		List<Fornecedor> list = new ArrayList<Fornecedor>();
		try {
			String sql = "select codfor, nomfor from fornecedor";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Fornecedor fornecedor = new Fornecedor();
				fornecedor.setId(rs.getInt(1));
				fornecedor.setNome(notNull(rs.getString(2)));
                               				
				list.add(fornecedor);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
        
    
    public List<Fornecedor> findByNome(String nome){
         List<Fornecedor> list = new ArrayList<Fornecedor>();    
        try{
            String sql= "SELECT codfor,nomfor from fornecedor where nomfor LIKE'" + nome+"%'";
          
            stmt = conn.prepareStatement(sql);
            rs= stmt.executeQuery();
        
            while (rs.next()) {
               Fornecedor fornecedor = new Fornecedor(); 
               fornecedor.setId(rs.getInt(1));
               fornecedor.setNome(notNull(rs.getString(2)));
               
               list.add(fornecedor);
              
          }
             
	   }catch (SQLException e) {
		   e.printStackTrace();
	   }
           return list;
        }    

	@Override
	public Fornecedor findById(int id) {
		String sql = "select codfor, nomfor from fornecedor where codfor = ?";
                Fornecedor fornecedor = new Fornecedor();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    fornecedor.setId(rs.getInt(1));
                    fornecedor.setNome(notNull(rs.getString(2)));
                   
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return fornecedor;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

  
}
