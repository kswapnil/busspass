package com.busspass.frontend.service;

import java.util.List;

import com.busspass.frontend.model.Registered_Users;



public interface ILoginService {
	public boolean validateUser(String email, String password);

	public boolean registerNewUser(Registered_Users user);

	public boolean deleteRegisteredUser(Integer userId);

	public Registered_Users getUserById(int userId);

	public List<Registered_Users> getListOfUsers();
	
	public String forgotPassword(String email);
}
