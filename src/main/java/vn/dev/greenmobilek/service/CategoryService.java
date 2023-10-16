package vn.dev.greenmobilek.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import vn.dev.greenmobilek.dto.SearchModel;
import vn.dev.greenmobilek.model.Category;


@Service
public class CategoryService extends BaseService<Category>{
	@Override
	public Class<Category> clazz() {
		// TODO Auto-generated method stub
		return Category.class;
	}
	
	@SuppressWarnings("unchecked")
	public List<Category> findAllActive() {
		return (List<Category>) entityManager.createNativeQuery("SELECT * FROM " + "tbl_category WHERE status=1", clazz()).getResultList();
	}
	

	@Transactional
	public void inactiveCategory(Category category) {
		super.saveOrUpdate(category);
	}
	
	public List<Category> noPaginationSearch(SearchModel searchObj) {
		String sql="SELECT * FROM tbl_category WHERE status=1";
		
		if (!StringUtils.isEmpty(searchObj.getKeyword())) {
			sql += " AND (name like '%" + searchObj.getKeyword() + "%'" + 
					" OR description like '%" + searchObj.getKeyword() + "%')";
		}		
		return super.executeNativeSql(sql);
	}
	
	public List<Category> paginationSearch(SearchModel searchObj){
		String sql="SELECT * FROM tbl_category WHERE status=1";
		
		if (!StringUtils.isEmpty(searchObj.getKeyword())) {
			sql += " AND (name like '%" + searchObj.getKeyword() + "%'" + 
					" OR description like '%" + searchObj.getKeyword() + "%')";
		}		
		return super.executeNativeSql(sql, searchObj.getCurrentPage(), searchObj.getSizeOfPage());
	}

	@Transactional
	public void saveEditCategory(Category category) {
		super.saveOrUpdate(category);
	}
	
}
