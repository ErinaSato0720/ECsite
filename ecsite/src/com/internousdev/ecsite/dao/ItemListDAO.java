package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.internousdev.ecsite.util.DBConnector;

public class ItemListDAO {

	public ArrayList<ItemInfoDTO> getItemList()throws SQLException{

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();
		ArrayList<ItemInfoDTO>itemInfoDTOList = new ArrayList<ItemInfoDTO>();


	String sql ="SELECT * FROM item_info_transaction ORDER BY id DESC";

	try{
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
			ItemInfoDTO dto = new ItemInfoDTO();
			dto.setId(rs.getString("id"));
			dto.setItemName(rs.getString("item_name"));
			dto.setItemPrice(rs.getString("item_price"));
			dto.setItemStock(rs.getString("item_stock"));
			dto.setInsert_date(rs.getString("insert_date"));
			dto.setUpdate_date(rs.getString("update_date"));
			itemInfoDTOList.add(dto);
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
			con.close();
	}
	return itemInfoDTOList;
	}
}
