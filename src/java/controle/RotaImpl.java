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
                                + "(dmtrot,codloc,codloc1) values(?,?,?)";
                               
			stmt = conn.prepareStatement(sql);
	
			stmt.setDouble(1, rota.getDmt());
                        stmt.setInt(2, rota.getSaida());
                        stmt.setInt(3, rota.getDestino());
                        
                        
                        stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Rota  rota) {
		// TODO Auto-generated method stub
            String sql = "update rota set dmtrot = ?, codloc = ?, codloc1 = ? "
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
        

	@Override
	public Rota findById(int id) {
		
                String sql = "SELECT r.codrot,r.dmtrot,r.codloc,r.codloc1,l.nomloc,"
                                +    "(select nomloc from local where codloc=codloc1) as nomloc1 FROM rota r, local l"
                                +    " WHERE l.codloc = r.codloc and codrot = ?";
                
                Rota rota = new Rota();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
 
                    rs.next();
                    rota.setId(rs.getInt(1));
                    rota.setDmt(rs.getDouble(2));
                    rota.setSaida(rs.getInt(3));
                    rota.setDestino(rs.getInt(4));
                    rota.setNomeSaida(rs.getString(5));
                    rota.setNomeDestino(rs.getString(6));
                    //rota.setNome(notNull(rs.getString(2)));
                   
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return rota;
	}
    @Override
    public List<Rota> findBySaida(int saida) {
        List<Rota> list = new ArrayList<Rota>();    
        try{
            String sql = "SELECT r.codrot,r.dmtrot,r.codloc,r.codloc1,l.nomloc,"
                                +    "(select nomloc from local where codloc=codloc1) as nomloc1 FROM rota r, local l"
                                +    " WHERE l.codloc = r.codloc and r.codloc = ?";
                      
                      
              stmt = conn.prepareStatement(sql);
              stmt.setInt(1, saida);
              rs = stmt.executeQuery();
        
            while (rs.next()) {
               Rota rota = new Rota(); 
                rota.setId(rs.getInt(1));
                rota.setDmt(rs.getDouble(2));
                rota.setSaida(rs.getInt(3));
                rota.setDestino(rs.getInt(4));
                rota.setNomeSaida(rs.getString(5));
                rota.setNomeDestino(rs.getString(6));
               
               //rota.setNome(notNull(rs.getString(2)));
               
               list.add(rota);
              
          }
             
	   }catch (SQLException e) {
		   e.printStackTrace();
	   }
           return list;
       
    }

    @Override
    public List<Rota> findByDestino(int destino) {
        List<Rota> list = new ArrayList<Rota>();    
        try{
            String sql = "SELECT r.codrot,r.dmtrot,r.codloc,r.codloc1,l.nomloc,"
                                +    "(select nomloc from local where codloc=codloc1) as nomloc1 FROM rota r, local l"
                                +    " WHERE l.codloc = r.codloc and r.codloc1 = ?";
                      
                      
              stmt = conn.prepareStatement(sql);
              stmt.setInt(1, destino);
              rs = stmt.executeQuery();
        
            while (rs.next()) {
               Rota rota = new Rota(); 
                rota.setId(rs.getInt(1));
                rota.setDmt(rs.getDouble(2));
                rota.setSaida(rs.getInt(3));
                rota.setDestino(rs.getInt(4));
                rota.setNomeSaida(rs.getString(5));
                rota.setNomeDestino(rs.getString(6));
               
               //rota.setNome(notNull(rs.getString(2)));
               
               list.add(rota);
              
          }
             
	   }catch (SQLException e) {
		   e.printStackTrace();
	   }
           return list;
    }

    @Override
    public List<Rota> findBySaidaDestino(int saida, int destino) {
        List<Rota> list = new ArrayList<Rota>();    
        try{
            String sql = "SELECT r.codrot,r.dmtrot,r.codloc,r.codloc1,l.nomloc,"
                                +    "(select nomloc from local where codloc=codloc1) as nomloc1 FROM rota r, local l"
                                +    " WHERE l.codloc = r.codloc and r.codloc = "+ saida + " and r.codloc1 = " + destino;
                      
                      
              stmt = conn.prepareStatement(sql);
         //     stmt.setInt(1, saida);
         //     stmt.setInt(2, destino);
              rs = stmt.executeQuery();
        
            while (rs.next()) {
               Rota rota = new Rota(); 
                rota.setId(rs.getInt(1));
                rota.setDmt(rs.getDouble(2));
                rota.setSaida(rs.getInt(3));
                rota.setDestino(rs.getInt(4));
                rota.setNomeSaida(rs.getString(5));
                rota.setNomeDestino(rs.getString(6));
               
               //rota.setNome(notNull(rs.getString(2)));
               
               list.add(rota);
              
          }
             
	   }catch (SQLException e) {
		   e.printStackTrace();
	   }
           return list;
    }

  

 private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }
}