package com.hitch.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.hitch.entity.Applications;


@Repository
public interface AppsRepository extends JpaRepository<Applications, String> {

}
