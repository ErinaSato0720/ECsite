package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.ItemDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;


public class ItemDeleteCompleteAction extends ActionSupport {

	String id;
	String message;

	public String execute() throws SQLException{
		String result = ERROR;
		ItemDeleteCompleteDAO itemDeleteCompleteDAO = new ItemDeleteCompleteDAO();
		int res = itemDeleteCompleteDAO.deleteItem(id);
		if(res > 0){
			setMessage("商品情報を正しく削除しました。");
		}else{
			setMessage("商品情報の削除に失敗しました。");
		}
		result = SUCCESS;
		return result;
	}
	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id = id;
	}
	public String getMessage(){
		return message;
	}
	public void setMessage(String message){
		this.message = message;
	}
}
