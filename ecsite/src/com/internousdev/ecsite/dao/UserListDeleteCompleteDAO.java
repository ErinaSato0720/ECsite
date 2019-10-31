package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;

public class UserListDeleteCompleteDAO {

	private DBConnector db = new DBConnector();
	private Connection con = db.getConnection();

	public int DeleteUserList() throws SQLException{

		String sql = "DELETE * FROM login_user_transaction WHERE admin_flg IS NULL OR admin_flg<> '1'";

		PreparedStatement ps;
		int result = 0;
		try{
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			con.close();
		}
		return result;
	}
}
