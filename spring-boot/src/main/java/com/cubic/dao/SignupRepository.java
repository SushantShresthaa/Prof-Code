package com.cubic.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cubic.dao.entity.SignupEntity;

public interface SignupRepository extends JpaRepository<SignupEntity, Integer> {
	
	public Optional<SignupEntity> findByUsername(String username);
	public Optional<SignupEntity>  findByUsernameAndPassword(String username,String password);
}
