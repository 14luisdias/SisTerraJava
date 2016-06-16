package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.ConnectionFactory;
 
import dao.VeiculoDao;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Veiculo;



public class VeiculoImpl implements VeiculoDao {
    
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Veiculo veiculo) {
		try {
			String sql = "insert into veiculo "
                                + "(plavei,capvei,codtipo,codmot) values(?,?,?,?)";
                               
			stmt = conn.prepareStatement(sql);
	
			
                        stmt.setString(1, veiculo.getPlaca());
                        stmt.setDouble(2, veiculo.getCapacidade());
                        stmt.setInt(4, veiculo.getCodTipo());
                        stmt.setInt(3, veiculo.getCodMotorista());
                        
                        
                        
                        stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Veiculo  veiculo) {
		// TODO Auto-generated method stub
            String sql = "update veiculo set plavei = ?, capvei = ?, codtipo = ?, codmot = ? "
                    + "where codvei = ?";
            try {
                stmt = conn.prepareStatement(sql);
               
                stmt.setString(1, veiculo.getPlaca());
                stmt.setDouble(2, veiculo.getCapacidade());
                stmt.setInt(4, veiculo.getCodTipo());
                stmt.setInt(3, veiculo.getCodMotorista());
                stmt.setInt(5, veiculo.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Veiculo veiculo) {
		// TODO Auto-generated method stub
            String sql = "delete from veiculo where codvei = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, veiculo.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Veiculo> getListAll() {
		List<Veiculo> list = new ArrayList<Veiculo>();
		try {
                                     
			String sql = "SELECT v.codvei,v.plavei,v.capvei,v.codtipo,v.codmot,t.destip,m.nommot "
                                +    "FROM veiculo v, tipoveiculo t, motorista m" 
                                +    " WHERE v.codtipo = t.codtip and v.codmot = m.codmot";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Veiculo veiculo = new Veiculo();
				veiculo.setId(rs.getInt(1));
                                veiculo.setPlaca(rs.getString(2));
                                veiculo.setCapacidade(rs.getDouble(3));
                                veiculo.setCodTipo(rs.getInt(4));
                                veiculo.setCodMotorista(rs.getInt(5));
                                veiculo.setNomeTipo(rs.getString(6));
                                veiculo.setNomeMotorista(rs.getString(7));
                                
                              
				list.add(veiculo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
        

	@Override
	public Veiculo findById(int id) {
		
                
                String sql = "SELECT v.codvei,v.plavei,v.capvei,v.codtipo,v.codmot,t.destip,m.nommot "
                                +   "FROM veiculo v, tipoveiculo t, motorista m" 
                                +   " WHERE v.codtipo = t.codtip and v.codmot = m.codmot"
                                +   "and v.codvei = ?";
                
                Veiculo veiculo = new Veiculo();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
 
                    rs.next();
                    veiculo.setId(rs.getInt(1));
                    veiculo.setPlaca(rs.getString(2));
                    veiculo.setCapacidade(rs.getDouble(3));
                    veiculo.setCodTipo(rs.getInt(4));
                    veiculo.setCodMotorista(rs.getInt(5));
                    veiculo.setNomeTipo(rs.getString(6));
                    veiculo.setNomeMotorista(rs.getString(7));
                   
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return veiculo;
	}
    @Override
    public List<Veiculo> findByTipo(int tipo) {
        List<Veiculo> list = new ArrayList<Veiculo>();    
        try{
            
               String sql = "SELECT v.codvei,v.plavei,v.capvei,v.codtipo,v.codmot,t.destip,m.nommot "
                                +   "FROM veiculo v, tipoveiculo t, motorista m" 
                                +   " WHERE v.codtipo = t.codtip and v.codmot = m.codmot"
                                +   "and v.codtipo = ?";        
                      
              stmt = conn.prepareStatement(sql);
              stmt.setInt(1, tipo);
              rs = stmt.executeQuery();
       
            while (rs.next()) {
               Veiculo veiculo = new Veiculo(); 
               veiculo.setId(rs.getInt(1));
               veiculo.setPlaca(rs.getString(2));
               veiculo.setCapacidade(rs.getDouble(3));
               veiculo.setCodTipo(rs.getInt(4));
               veiculo.setCodMotorista(rs.getInt(5));
               veiculo.setNomeTipo(rs.getString(6));
               veiculo.setNomeMotorista(rs.getString(7));
            
               list.add(veiculo);
             
          }
             
	   }catch (SQLException e) {
		   e.printStackTrace();
	   }
           return list;
       
           
    }
    

    @Override
    public List<Veiculo> findByMotorista(int codMotorista) {
        List<Veiculo> list = new ArrayList<Veiculo>();    
        try{
             String sql = "SELECT v.codvei,v.plavei,v.capvei,v.codtipo,v.codmot,t.destip,m.nommot "
                                +   "FROM veiculo v, tipoveiculo t, motorista m" 
                                +   " WHERE v.codtipo = t.codtip and v.codmot = m.codmot"
                                +   "and v.codmot = ?";        
                      
              stmt = conn.prepareStatement(sql);
              stmt.setInt(1, codMotorista);
              rs = stmt.executeQuery();
       
            while (rs.next()) {
               Veiculo veiculo = new Veiculo(); 
               veiculo.setId(rs.getInt(1));
               veiculo.setPlaca(rs.getString(2));
               veiculo.setCapacidade(rs.getDouble(3));
               veiculo.setCodTipo(rs.getInt(4));
               veiculo.setCodMotorista(rs.getInt(5));
               veiculo.setNomeTipo(rs.getString(6));
               veiculo.setNomeMotorista(rs.getString(7));
            
               list.add(veiculo);
             
          }
             
	   }catch (SQLException e) {
		   e.printStackTrace();
	   }
           return list;
    }

 
 

    @Override
    public List<Veiculo> findByPlaca(String placa) {
    
         List<Veiculo> list = new ArrayList<Veiculo>();    
        try{
             String sql = "SELECT v.codvei,v.plavei,v.capvei,v.codtipo,v.codmot,t.destip,m.nommot "
                                +   "FROM veiculo v, tipoveiculo t, motorista m" 
                                +   " WHERE v.codtipo = t.codtip and v.codmot = m.codmot"
                                +   "and v.plavei = ?";        
                      
              stmt = conn.prepareStatement(sql);
              stmt.setString(1, placa);
              rs = stmt.executeQuery();
       
            while (rs.next()) {
               Veiculo veiculo = new Veiculo(); 
               veiculo.setId(rs.getInt(1));
               veiculo.setPlaca(rs.getString(2));
               veiculo.setCapacidade(rs.getDouble(3));
               veiculo.setCodTipo(rs.getInt(4));
               veiculo.setCodMotorista(rs.getInt(5));
               veiculo.setNomeTipo(rs.getString(6));
               veiculo.setNomeMotorista(rs.getString(7));
            
               list.add(veiculo);
             
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