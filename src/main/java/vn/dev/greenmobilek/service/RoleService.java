package vn.dev.greenmobilek.service;

import vn.dev.greenmobilek.model.Role;
import vn.dev.greenmobilek.model.User;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class RoleService extends BaseService<Role> {
	
	@Override
	public Class<Role> clazz() {
		// TODO Auto-generated method stub
		return Role.class;
	}
	
	public Role getRoleByName(String name) {
		String sql = "select * from tbl_role where name='" + name + "'";
		return this.getEntityByNativeSql(sql);
	}
	
	public String checkRoleOfUserById(int userId) {
		Role adminRole = getRoleByName("ADMIN");
		List<User> admins = adminRole.getUsers();
		
		for(User admin : admins) {
			if(admin.getId() == userId) {
				return "ADMIN";
			}
		}	
		
		Role staffRole = getRoleByName("STAFF");
		List<User> staffs = staffRole.getUsers();
		
		for(User staff : staffs) {
			if(staff.getId() == userId) {
				return "STAFF";
			}
		}	
		
		return "CUTOMER";
	}
}
