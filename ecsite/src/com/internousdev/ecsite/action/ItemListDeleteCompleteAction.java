package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.ItemListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListDeleteCompleteAction extends ActionSupport {

	private String message;

	public String execute() throws SQLException{
		 String result = ERROR;
		 ItemListDeleteCompleteDAO itemListDeleteCompleteDAO = new ItemListDeleteCompleteDAO();

		 int res = itemListDeleteCompleteDAO.DeleteItemList();

		 if(res > 0){
			 setMessage("削除が完了しました。");
		 }else if(res == 0){
			 setMessage("削除できませんでした。");
		 }
		 result = SUCCESS;
		 return result;
	}
	public String getMessage(){
		return this.message;
	}
	public void setMessage(String message){
		this.message = message;
	}
}
