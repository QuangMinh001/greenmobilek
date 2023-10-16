package vn.dev.greenmobilek.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import vn.dev.greenmobilek.model.User;

@Service
public class UserDetailsServiceImpl extends BaseService<User> implements UserDetailsService{
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		//Conect to DB lay user theo user name
		String sql = "SELECT * FROM tbl_user WHERE username = '" + username + "' AND status = 1";
		
		User user = this.getEntityByNativeSql(sql);
		
		try {
			System.out.println(" != "+user);
			System.out.println("User password: " + user.getPassword());
			System.out.println("Username: " + user.getUsername());
			return user;
		} catch (UsernameNotFoundException e) {
			e.printStackTrace();
		}
		return new User(); //UserDetails không được null.
		
//		if(user != null) {
//			System.out.println(" != "+user);
//			System.out.println("User password: " + user.getPassword());
//			System.out.println("Username: " + user.getUsername());
//			return user;
//		}else {
//			System.out.println(" == " + user);
//			return new User("administrator", "$2a$04$CGSp7ZE7B6IBEJlCENxAvOB7FQ6ufQWjE9UX05VV7cUjgLUTf1U5q");
//		}
		
	}

	@Override
	public Class<User> clazz() {
		// TODO Auto-generated method stub
		return User.class;
	}
}
