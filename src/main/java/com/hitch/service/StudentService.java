package com.hitch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hitch.entity.Student;
import com.hitch.repository.StudentRepository;

@Service
public class StudentService {

	@Autowired
	StudentRepository studentRepository;
	
	
	public void addStudent(Student student){
		this.studentRepository.save(student);
	}


	public Student findStudent(String email) { 
		return this.studentRepository.findOne(email);
	}
}
