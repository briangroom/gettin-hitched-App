package com.hitch.service;

import java.util.List;

//import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitch.entity.UserLogin;
import com.hitch.repository.HitchedRepository;

@Service
public class HitchedService {

	@Autowired
	HitchedRepository hitchedRepository;
	
	/*@Autowired
	UserLogin userLogin;*/
	
	//users
	public boolean findUser(String email){
		if (this.hitchedRepository.exists(email)){
			return true;}
		else{
			return false;}
		}	
	
	public void createUser(UserLogin userLogin){
		this.hitchedRepository.save(userLogin);
		}
	
	/*public JSONObject jdbcDbConnect(String email){
		if(this.hitchedRepository.exists(email)){
			return true;}
		else{
			return false;}

		}*/
	
	public void updateUser(UserLogin userLogin){
		this.hitchedRepository.save(userLogin);
		}
	
	/*public void deleteUserById(long id){
		this.hitchedRepository.delete(id);
		}*/

    public List<UserLogin> getAllusers(){
		return this.hitchedRepository.findAll();
		}

    public UserLogin getUserByEmailId(String email){
		return this.hitchedRepository.findOne(email);
	}

	
/*	public UserLogin updateUser(UserLogin userLogin);	
	public void deleteUserById(long id);
    public List<UserLogin> getAllusers();
    public UserLogin getUserByEmailId(String email);
    
    public UserLogin getUserById(long id);
    public void updateRole(UserLogin userLogin, String role, long id);   
    public void passReset(UserLogin userLogin, String pass, String email);
    public void updateSubscription(UserLogin userLogin, String membership, long id);
    public List<UserLogin> lookupMembers(String name);
    public void updateUserById(UserLogin userLogin, long id);
    public List<UserLogin> getUserByName(String user);
    public List<UserLogin> lookupCity(String cityOrZip);
    
*/
	/*public void createAddress(Addresses addresses){
		this.hitchedRepository.save(addresses);
		}
	public List<Addresses> getAllAddresses(){
		this.hitchedRepository.getAll(addresses);
		}*/
	/*public Addresses updateAddress(Addresses addresses);
	public void deleteAddressById(long id);*/

	
	/*public void addStudent(Student student){
		this.hitchedRepository.save(student);
	}


	public Student findStudent(String email) { 
		return this.hitchedRepository.findOne(email);
	}*/
}
