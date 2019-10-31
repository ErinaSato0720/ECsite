package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListAction extends ActionSupport implements SessionAware {

	private Map<String, Object>session;
	private ArrayList<UserInfoDTO> userInfoDTOList = new  ArrayList<UserInfoDTO>();

	public String execute() throws SQLException{
		UserListDAO userListDAO = new UserListDAO();
		userInfoDTOList = userListDAO.getUserList();
		if(!(userInfoDTOList.size() > 0)){
			userInfoDTOList = null;
		}
		String result = SUCCESS;
		return result;
	}
	public Map<String, Object> getSession(){
		return session;
	}
	public void setSession(Map<String, Object>session){
		this.session = session;
	}
	public ArrayList<UserInfoDTO> getUserInfoDTOList(){
		return userInfoDTOList;
	}
	public void setUserInfoDTOList(ArrayList<UserInfoDTO> userInfoDTOList){
		this.userInfoDTOList = userInfoDTOList;
	}
}
