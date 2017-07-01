package com.hitch.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitch.entity.UserLogin;

@Repository
public interface HitchedRepository extends JpaRepository<UserLogin, String> {

}

/*@Repository
public interface HitchedRepository extends JpaRepository<Student, String> {

}*/
