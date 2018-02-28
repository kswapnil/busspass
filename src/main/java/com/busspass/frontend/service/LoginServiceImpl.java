package com.busspass.frontend.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.busspass.frontend.model.Registered_Users;

@Service
public class LoginServiceImpl implements ILoginService {
	
	private RestTemplate restTemplate= new RestTemplate();
	
	@Override
	public boolean validateUser(String email, String password) {
		String url="http://localhost:8080/buspasssystem/validateUser/"+email+"/"+password;
		return restTemplate.getForObject(url, Boolean.class);
	}

	@Override
	public boolean registerNewUser(Registered_Users user) {
		 try{ 
	     final String uri = "http://localhost:8080/buspasssystem/registerUser";
	     return restTemplate.postForObject(uri,user,Boolean.class);
		}catch(Exception e){e.printStackTrace();}
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
		Registered_Users[] usersList=restTemplate.getForObject("http://localhost:8080/buspasssystem/getlistOfUsers", Registered_Users[].class);
		return Arrays.asList(usersList);
	}

	@Override
	public String forgotPassword(String email) {
		final String url="http://localhost:8080/buspasssystem/forgotPassword?email="+email;
		return restTemplate.getForObject(url, String.class);
	}

	@Override
	public Registered_Users getUserByEmail(String email) {
		String url="http://localhost:8080/buspasssystem/getUserByEmail?email="+email;
		return restTemplate.getForObject(url, Registered_Users.class);
	}

	@Override
	public boolean updateUser(int id,Registered_Users user) {
		try{
			restTemplate.put("http://localhost:8080/buspasssystem/updateUserDetails/"+id, user);
			return true;
		}
		catch(Exception e){ e.printStackTrace();return false;}
	}

}
