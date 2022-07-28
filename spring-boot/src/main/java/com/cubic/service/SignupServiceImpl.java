package com.cubic.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cubic.controller.SignupDTO;
import com.cubic.dao.SignupRepository;
import com.cubic.dao.entity.SignupEntity;

@Service
public class SignupServiceImpl implements SignupService {

	/*
	 * @Autowired private SignupDao signupDao;
	 */
	
	@Autowired
	private SignupRepository signupDao;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

	@Override
	public void deleteById(int sid) {
		signupDao.deleteById(sid);
	}

	@Override
	public List<SignupDTO> findAll() {
		List<SignupEntity> list = signupDao.findAll();

		List<SignupDTO> dtos = new ArrayList<>();
		for (SignupEntity signup : list) {
			SignupDTO dto = new SignupDTO();
			BeanUtils.copyProperties(signup, dto);
			dtos.add(dto);
		}

		return dtos;
	}

	@Override
	public void save(SignupDTO signupDTO) {
		SignupEntity signup = new SignupEntity();
		BeanUtils.copyProperties(signupDTO, signup);
		String encodedPassword=passwordEncoder.encode(signup.getPassword());
		signup.setPassword(encodedPassword);
		signupDao.save(signup);
	}
	
	@Override
	public void update(SignupDTO signupDTO) {
		SignupEntity signup = new SignupEntity();
		BeanUtils.copyProperties(signupDTO, signup);
		signupDao.save(signup);
	}
	
	@Override
	public boolean findByUsername(String username) {
		 Optional<SignupEntity> optional=signupDao.findByUsername(username);
		 return optional.isPresent();
	}
	
	@Override
	@Transactional
	public void updatePassword(String username, String newpassword) {
		 Optional<SignupEntity> optional=signupDao.findByUsername(username);
		 if(optional.isPresent()) {
			 SignupEntity entity = optional.get();
			 entity.setPassword(newpassword);
		 }
		
	}
	

	@Override
	public SignupDTO findById(int sid) {
		Optional<SignupEntity> signup = signupDao.findById(sid);
		SignupDTO dto = new SignupDTO();
		if(signup.isPresent()) {
			BeanUtils.copyProperties(signup.get(), dto);
		}
		return dto;
	}

	@Override
	@Transactional
	public void updateImage(int sid, String newimage) {
		Optional<SignupEntity> signup = signupDao.findById(sid);
		if(signup.isPresent()) {
			 SignupEntity entity = signup.get();
			 entity.setImage(newimage);
		 }
	}

	@Override
	public SignupDTO findByUsernameAndPassword(String username, String password) {
		Optional<SignupEntity>  optional= signupDao.findByUsernameAndPassword(username, password);
		SignupDTO dto = null;
		if (optional.isPresent()) {
			dto = new SignupDTO();
			BeanUtils.copyProperties(optional.get(), dto);
		}
		return dto;
	}

}
