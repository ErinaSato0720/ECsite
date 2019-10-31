package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteCompleteAction extends ActionSupport {

	private String message;

	public String execute() throws SQLException{
		String result=ERROR;
		UserListDeleteCompleteDAO userListDeleteCompleteDAO = new UserListDeleteCompleteDAO();

		int res = userListDeleteCompleteDAO.DeleteUserList();

		if(res > 0){
			 setMessage("削除が完了しました。");
		 }else{
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