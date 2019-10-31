package com.internousdev.ecsite.action;

import java.sql.SQLException;

import com.internousdev.ecsite.dao.UserDeleteCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteCompleteAction extends ActionSupport {

	private String id;
	private String message;

	public String execute() throws SQLException{
		String result = ERROR;
		UserDeleteCompleteDAO userDeleteCompleteDAO = new UserDeleteCompleteDAO();
		int res = userDeleteCompleteDAO.deleteUser(id);
		if(res > 0){
			setMessage("ユーザー情報を正しく削除しました。");
		}else{
			setMessage("ユーザー情報の削除に失敗しました。");
		}
		result = SUCCESS;
		return result;
	}
	public String getId(){
		return id;
	}
	public void serId(String id){
		this.id = id;
	}
	public String getMessage(){
		return message;
	}
	public void setMessage(String message){
		this.message = message;
	}

}
