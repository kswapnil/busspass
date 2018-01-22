package com.busspass.frontend.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.busspass.frontend.model.Registered_Users;

@Service
public class LoginServiceImpl implements ILoginService {

	@Override
	public boolean validateUser(String email, String password) {
		return false;
	}

	@Override
	public boolean registerNewUser(Registered_Users user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteRegisteredUser(Integer userId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Registered_Users getUserById(int userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Registered_Users> getListOfUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String forgotPassword(String email) {
		// TODO Auto-generated method stub
		return null;
	}

}
