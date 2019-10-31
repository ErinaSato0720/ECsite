package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class UserDeleteCompleteDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public int deleteUser(String id)throws SQLException{

		String sql = "DELETE *FROM user_info_transaction WHERE id = ?";

		PreparedStatement ps;
		int result = 0;
		try{
			ps = con.prepareStatement(sql);
			ps.setString(1,  id);
			result = ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return result;
	}

}
