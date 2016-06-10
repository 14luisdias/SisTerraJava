package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.ConnectionFactory;
 
import dao.LocalDao;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Local;



public class LocalImpl implements LocalDao {
    
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Local local) {
		try {
			String sql = "insert into local "
                                + "(nomloc) values(?)";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, local.getNome());
                        stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Local  local) {
		// TODO Auto-generated method stub
            String sql = "update local set nomloc = ? "
                    + "where codloc = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, local.getNome());
                stmt.setInt(2, local.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Local local) {
		// TODO Auto-generated method stub
            String sql = "delete from local where codloc = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, local.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Local> getListAll() {
		List<Local> list = new ArrayList<Local>();
		try {
			String sql = "select codloc, nomloc from local";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Local local = new Local();
				local.setId(rs.getInt(1));
				local.setNome(notNull(rs.getString(2)));
                               				
				list.add(local);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
        
    
    public List<Local> findByNome(String nome){
         List<Local> list = new ArrayList<Local>();    
        try{
            String sql= "SELECT codloc,nomloc from local where nomloc LIKE'" + nome+"%'";
          
            stmt = conn.prepareStatement(sql);
            rs= stmt.executeQuery();
        
            while (rs.next()) {
               Local local = new Local(); 
               local.setId(rs.getInt(1));
               local.setNome(notNull(rs.getString(2)));
               
               list.add(local);
              
          }
             
	   }catch (SQLException e) {
		   e.printStackTrace();
	   }
           return list;
        }    

	@Override
	public Local findById(int id) {
		String sql = "select codloc, nomloc from Local where codloc = ?";
                Local local = new Local();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    local.setId(rs.getInt(1));
                    local.setNome(notNull(rs.getString(2)));
                   
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return local;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

  
}
