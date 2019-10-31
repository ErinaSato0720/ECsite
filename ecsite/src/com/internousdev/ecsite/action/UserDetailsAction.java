package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserDetailsDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserDetailsAction extends ActionSupport implements SessionAware {

	private String id;
	private UserInfoDTO userDetailsDTO;
	private Map<String, Object>session;

	public String execute()throws SQLException{
		UserDetailsDAO dao = new UserDetailsDAO();
		userDetailsDTO = dao.getUserInfo(id);

		if(userDetailsDTO.getUserName() == null){
			userDetailsDTO = null;
		}
		return SUCCESS;
	}

	public String getId(){
		return id;
	}
	public void setId(String id){
		this.id = id;
	}
	public UserInfoDTO getUserDetailsDTO(){
		return userDetailsDTO;
	}
	public void setUserDetailsDTO(UserInfoDTO userDetailsDTO){
		this.userDetailsDTO = userDetailsDTO;
	}
	public Map<String, Object>getSession(){
		return session;
	}
	@Override
	public void setSession(Map<String, Object>session){
		this.session = session;
	}

}
