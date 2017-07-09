package com.hitch.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitch.entity.Applications;
import com.hitch.repository.AppsRepository;

@Service
public class AppsService {


	@Autowired
		AppsRepository appsRepository;
	
	public void createApp(Applications applications) {
		appsRepository.save(applications);
	}

	public void updateApp(Applications applications){
		appsRepository.save(applications);
		}
	
	public void deleteAppById(Applications applications){
		appsRepository.delete(applications);
		}

    public List<Applications> getAllApps(){
		return appsRepository.findAll();
		}

	public boolean findApp(String appName){
		return appsRepository.exists(appName);
	}
	
	
}
