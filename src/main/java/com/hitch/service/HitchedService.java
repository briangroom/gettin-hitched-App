package com.hitch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitch.entity.Applications;
import com.hitch.entity.UserLogin;
import com.hitch.repository.HitchedRepository;

@Service
public class HitchedService {

	@Autowired
	HitchedRepository hitchedRepository;
	

	//users
	public boolean findUser(String email){
		return this.hitchedRepository.exists(email);
	}
	
	public void createUser(UserLogin userLogin){
		 hitchedRepository.save(userLogin);
	}

	public void updateUser(UserLogin userLogin){
		this.hitchedRepository.save(userLogin);
		}
	
    public List<UserLogin> getAllusers(){
		return this.hitchedRepository.findAll();
		}

	public void deleteUserById(UserLogin userLogin){
		this.hitchedRepository.delete(userLogin);
		}

    public UserLogin getUserByEmailId(String email){
		return this.hitchedRepository.findOne(email);
	}

    public void updateUserByEmail(UserLogin userLogin, String emailAddress){
		 this.hitchedRepository.save(userLogin);
    }

    public List<UserLogin> lookupMembers(String name){
		return this.hitchedRepository.findAll();
		}

	public boolean findApp(String appName) {
		// TODO Auto-generated method stub
		return false;
	}

    /*public List<UserLogin> getUserByName(String user){
		return this.hitchedRepository.findAll(user);
	}*/

    
	
/*	public void deleteUserById(long id);
    public List<UserLogin> getAllusers();
    public UserLogin getUserByEmailId(String email);
    
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
