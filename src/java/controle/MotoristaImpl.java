package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.ConnectionFactory;
import dao.MotoristaDao;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Motorista;

public class MotoristaImpl implements MotoristaDao {

        
    
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Motorista motorista) {
		try {
			String sql = "insert into motorista "
                                + "(nommot) values(?)";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, motorista.getNome());
                        stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Motorista  motorista) {
		// TODO Auto-generated method stub
            String sql = "update motorista set nommot = ? "
                    + "where codmot = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, motorista.getNome());
                stmt.setInt(2, motorista.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Motorista motorista) {
		// TODO Auto-generated method stub
            String sql = "delete from motorista where codmot = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, motorista.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Motorista> getListAll() {
		List<Motorista> list = new ArrayList<Motorista>();
		try {
			String sql = "select codmot, nommot from motorista";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Motorista motorista = new Motorista();
				motorista.setId(rs.getInt(1));
				motorista.setNome(notNull(rs.getString(2)));
                               				
				list.add(motorista);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
        
    
    public List<Motorista> findByNome(String nome){
         List<Motorista> list = new ArrayList<Motorista>();    
        try{
            String sql= "SELECT codmot,nommot from motorista where nommot LIKE'" + nome+"%'";
            //Motorista motorista = new Motorista();
            stmt = conn.prepareStatement(sql);
            rs= stmt.executeQuery();
        
            while (rs.next()) {
               Motorista motorista = new Motorista(); 
               motorista.setId(rs.getInt(1));
               motorista.setNome(notNull(rs.getString(2)));
               
               list.add(motorista);
              
          }
             
	   }catch (SQLException e) {
		   e.printStackTrace();
	   }
           return list;
        }    

	@Override
	public Motorista findById(int id) {
		String sql = "select codmot, nommot from motorista where codmot = ?";
                Motorista motorista = new Motorista();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    motorista.setId(rs.getInt(1));
                    motorista.setNome(notNull(rs.getString(2)));
                   
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return motorista;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

}
