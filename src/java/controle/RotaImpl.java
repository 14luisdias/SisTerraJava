package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.ConnectionFactory;
 
import dao.RotaDao;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Rota;



public class RotaImpl implements RotaDao {
    
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Rota rota) {
		try {
			String sql = "insert into rota "
                                + "(dmtrot, codobra, codobra1) values(?, ?, ?)";
			
			stmt = conn.prepareStatement(sql);
	
			stmt.setDouble(1, rota.getDmt());
                        stmt.setInt(2, rota.getSaida());
                        stmt.setInt(2, rota.getDestino());
                        
                        
                        stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Rota  rota) {
		// TODO Auto-generated method stub
            String sql = "update rota set dmtrot = ?, codobra = ?, codobra = ? "
                    + "where codrot = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                stmt.setDouble(1, rota.getDmt());
                stmt.setInt(2, rota.getSaida());
                stmt.setInt(3, rota.getDestino());
                stmt.setInt(4, rota.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Rota rota) {
		// TODO Auto-generated method stub
            String sql = "delete from rota where codrot = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, rota.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Rota> getListAll() {
		List<Rota> list = new ArrayList<Rota>();
		try {
                                     
			String sql = "SELECT r.codrot,r.dmtrot,r.codloc,r.codloc1,l.nomloc,"
                                +    "(select nomloc from local where codloc=codloc1) as nomloc1 FROM rota r, local l"
                                +    " WHERE l.codloc = r.codloc";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Rota rota = new Rota();
				rota.setId(rs.getInt(1));
				rota.setDmt(rs.getDouble(2));
                                rota.setSaida(rs.getInt(3));
                                rota.setDestino(rs.getInt(4));
                                rota.setNomeSaida(rs.getString(5));
                                rota.setNomeDestino(rs.getString(6));
                               				
				list.add(rota);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
        
    
    public List<Rota> findByNome(String nome){
         List<Rota> list = new ArrayList<Rota>();    
        try{
            String sql= "SELECT codloc,nomloc from local where nomloc LIKE'" + nome+"%'";
          
            stmt = conn.prepareStatement(sql);
            rs= stmt.executeQuery();
        
            while (rs.next()) {
               Rota rota = new Rota(); 
               rota.setId(rs.getInt(1));
               //rota.setNome(notNull(rs.getString(2)));
               
               list.add(rota);
              
          }
             
	   }catch (SQLException e) {
		   e.printStackTrace();
	   }
           return list;
        }    

	@Override
	public Rota findById(int id) {
		String sql = "select codloc, nomloc from Local where codloc = ?";
                Rota rota = new Rota();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    rota.setId(rs.getInt(1));
                    //rota.setNome(notNull(rs.getString(2)));
                   
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return rota;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

    @Override
    public List<Rota> findBySaida(int saida) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Rota> findByDestino(int destino) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Rota> findBySaidaDestino(int saida, int destino) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

  
}
