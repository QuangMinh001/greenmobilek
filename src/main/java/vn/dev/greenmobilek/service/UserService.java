package vn.dev.greenmobilek.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import vn.dev.greenmobilek.dto.SearchModel;
import vn.dev.greenmobilek.model.User;

@Service
public class UserService extends BaseService<User>{
	@Override
	public Class<User> clazz() {
		// TODO Auto-generated method stub
		return User.class;
	}
	
	@SuppressWarnings("unchecked")
	public List<User> findAllAdministrator() {
		String sql = "SELECT a.id, a.username, a.password, a.email, a.description, a.create_date, a.update_date,\r\n"
				+ " a.status, a.create_by, a.update_by, a.mobile, a.avatar, a.spending\r\n"
				+ "FROM ((tbl_user as a\r\n"
				+ "INNER JOIN tbl_user_role ON a.id = tbl_user_role.user_id)\r\n"
				+ "INNER JOIN tbl_role ON tbl_user_role.role_id = tbl_role.id) where tbl_role.name in ('ADMIN', 'STAFF')";
		
		
		return (List<User>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<User> findAdministratorByKeyword(String key) {
		String sql = "SELECT a.id, a.username, a.password, a.email, a.description, a.create_date, a.update_date,\r\n"
				+ " a.status, a.create_by, a.update_by, a.mobile, a.avatar, a.spending\r\n"
				+ "FROM ((tbl_user as a\r\n"
				+ "INNER JOIN tbl_user_role ON a.id = tbl_user_role.user_id)\r\n"
				+ "INNER JOIN tbl_role ON tbl_user_role.role_id = tbl_role.id) where tbl_role.name in ('ADMIN', 'STAFF') order by a.id";
		
		if (!StringUtils.isEmpty(key)) {
			sql += " AND ((a.username like '%" + key + "%')" +
					" OR (a.mobile like '%" + key + "%')" +
					" OR (a.description like '%" + key + "%'))";
		}	
		
		return (List<User>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}

	public List<User> noPaginationSearch(SearchModel searchObj){
		String sql = "SELECT a.id, a.username, a.password, a.email, a.description, a.create_date, a.update_date,\r\n"
				+ " a.status, a.create_by, a.update_by, a.mobile, a.avatar, a.spending\r\n"
				+ "FROM ((tbl_user as a\r\n"
				+ "INNER JOIN tbl_user_role ON a.id = tbl_user_role.user_id)\r\n"
				+ "INNER JOIN tbl_role ON tbl_user_role.role_id = tbl_role.id) where tbl_role.name = 'CUSTOMER' ";
		
		if (!StringUtils.isEmpty(searchObj.getKeyword())) {
			sql += " AND ((a.username like '%" + searchObj.getKeyword() + "%')" +
					" OR (a.mobile like '%" + searchObj.getKeyword() + "%')" +
					" OR (a.description like '%" + searchObj.getKeyword() + "%'))";
		}		
		return super.executeNativeSql(sql);
	}
	
	public List<User> paginationSearch(SearchModel searchObj){
		String sql = "SELECT a.id, a.username, a.password, a.email, a.description, a.create_date, a.update_date,\r\n"
				+ " a.status, a.create_by, a.update_by, a.mobile, a.avatar, a.spending\r\n"
				+ "FROM ((tbl_user as a\r\n"
				+ "INNER JOIN tbl_user_role ON a.id = tbl_user_role.user_id)\r\n"
				+ "INNER JOIN tbl_role ON tbl_user_role.role_id = tbl_role.id) where tbl_role.name = 'CUSTOMER' ";
		
		if (!StringUtils.isEmpty(searchObj.getKeyword())) {
			sql += " AND ((a.username like '%" + searchObj.getKeyword() + "%')" +
					" OR (a.mobile like '%" + searchObj.getKeyword() + "%')" +
					" OR (a.description like '%" + searchObj.getKeyword() + "%'))";
		}
		return super.executeNativeSql(sql, searchObj.getCurrentPage(), searchObj.getSizeOfPage()); // );//
	}
	

}
