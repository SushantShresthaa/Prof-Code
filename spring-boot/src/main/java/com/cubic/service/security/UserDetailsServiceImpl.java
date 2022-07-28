package com.cubic.service.security;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cubic.dao.SignupRepository;
import com.cubic.dao.entity.SignupEntity;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {
  
  @Autowired
  private SignupRepository signupDao;
  
  @Autowired
  PasswordEncoder encoder;
  
  
  @Override
  @Transactional
  public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
	  Optional<SignupEntity> optional= signupDao.findByUsername(username);
	  if(optional.isEmpty()) {
		  throw new UsernameNotFoundException("User Not Found with username: " + username);
	  }
	  SignupEntity signup =optional.get();
	  signup.setPassword(signup.getPassword());
	  return UserDetailsImpl.build(signup);
  }

}
