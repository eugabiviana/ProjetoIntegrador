package com.jobster.security;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.jobster.model.Usuario;
import com.jobster.repository.UsuarioRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	private UsuarioRepository usuariorep;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		Optional <Usuario> user = usuariorep.findByEmail(userName);
		user.orElseThrow(()-> new UsernameNotFoundException(userName + "Not Found"));
		return user.map(UserDetailsImpl::new).get();
	}
	
	
}
