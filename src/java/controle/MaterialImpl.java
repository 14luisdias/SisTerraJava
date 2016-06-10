package controle;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import dao.ConnectionFactory;
 
import dao.MaterialDao;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Material;



public class MaterialImpl implements MaterialDao {
    
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement stmt;
	ResultSet rs;

	@Override
	public void salvar(Material material) {
		try {
			String sql = "insert into material "
                                + "(desmat,premat,unimat) values(?,?,?)";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, material.getNome());
                        stmt.setDouble(2, material.getPreco());
                        stmt.setString(3, material.getUnidade());
                        
                        stmt.execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void atualizar(Material  material) {
		// TODO Auto-generated method stub
            String sql = "update material set desmat = ?, premat = ?, unimat = ? "
                    + "where codmat = ?";
            try {
                stmt = conn.prepareStatement(sql);
                
                stmt.setString(1, material.getNome());
                stmt.setDouble(2, material.getPreco());
                stmt.setString(3, material.getUnidade());
                stmt.setInt(4, material.getId());
                
                stmt.executeUpdate();
                
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public void remover(Material material) {
		// TODO Auto-generated method stub
            String sql = "delete from material where codmat = ?";
            try {
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, material.getId());
                
                stmt.execute();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
	}

	@Override
	public List<Material> getListAll() {
		List<Material> list = new ArrayList<Material>();
		try {
			String sql = "select codmat, desmat, premat, unimat from material";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				Material material = new Material();
				material.setId(rs.getInt(1));
				material.setNome(notNull(rs.getString(2)));
                                material.setUnidade(notNull(rs.getString(4)));
                                material.setPreco(rs.getDouble(3));
                               				
				list.add(material);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
        
    
    public List<Material> findByNome(String nome){
         List<Material> list = new ArrayList<Material>();    
        try{
            String sql= "SELECT codmat,desmat, premat, unimat from material where desmat LIKE'" + nome+"%'";
          
            stmt = conn.prepareStatement(sql);
            rs= stmt.executeQuery();
        
            while (rs.next()) {
               Material material = new Material(); 
               material.setId(rs.getInt(1));
               material.setNome(notNull(rs.getString(2)));
               material.setPreco(rs.getDouble(3));
               material.setUnidade(notNull(rs.getString(4)));
               
               list.add(material);
              
          }
             
	   }catch (SQLException e) {
		   e.printStackTrace();
	   }
           return list;
        }    

	@Override
	public Material findById(int id) {
		String sql = "select codmat, desmat, premat, unimat from material where codmat = ?";
                Material material = new Material();
                try{
                    stmt = conn.prepareStatement(sql);
                    stmt.setInt(1, id);
                    rs = stmt.executeQuery();
                    rs.next();
                    material.setId(rs.getInt(1));
                    material.setNome(notNull(rs.getString(2)));
                    material.setPreco(rs.getDouble(3));
                    material.setUnidade(notNull(rs.getString(4)));
                   
                }catch (SQLException e) {
			e.printStackTrace();
		}
		return material;
	}
        
        private String notNull(String v){
            if(v == null)
                return "";
            return v;
        }

  
}
