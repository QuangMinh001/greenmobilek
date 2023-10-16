package vn.dev.greenmobilek.service;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import vn.dev.greenmobilek.dto.Constants;
import vn.dev.greenmobilek.dto.SearchModel;
import vn.dev.greenmobilek.model.Product;
import vn.dev.greenmobilek.model.ProductImage;

@Service
public class ProductService extends BaseService<Product> implements Constants{

	@Override
	public Class<Product> clazz() {
		// TODO Auto-generated method stub
		return Product.class;
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> findAllActive() {
		return (List<Product>) entityManager.createNativeQuery("SELECT * FROM " + "tbl_product WHERE status=1", clazz()).getResultList();
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Product> isHotPhones() {
		String sql = "SELECT * FROM greenmobile.tbl_product WHERE is_hot=1 and "
				+ "short_description like '%tablet%' or short_description like '%điện thoại%' LIMIT 10";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> isHotPCorScreens() {
		String sql = "SELECT * FROM greenmobile.tbl_product WHERE is_hot=1 and "
				+ "short_description like '%Laptop%' or short_description like '%TV%'"
				+ " or short_description like '%màn hình%' LIMIT 10";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> isHotSmartWatches() {
		String sql = "SELECT * FROM greenmobile.tbl_product WHERE is_hot=1 and "
				+ "short_description like '%smart watch%' or short_description like '%đồng hồ%' or short_description like '%Vòng%' LIMIT 10";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> findAppleAuthorisedReseller() {
		String sql = "SELECT * FROM greenmobile.tbl_product WHERE short_description like '%APPLE AUTHORISED RESELLER%' LIMIT 10";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> findHighlightPhones() {
		String sql = "SELECT * FROM greenmobile.tbl_product WHERE short_description like '%ĐIỆN THOẠI NỔI BẬT%' LIMIT 20";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> findSmartWatchs() {
		String sql = "SELECT * FROM greenmobile.tbl_product WHERE short_description like '%ĐỒNG HỒ THÔNG MINH%' LIMIT 20";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> findHighlightLaptops() {
		String sql = "SELECT * FROM greenmobile.tbl_product WHERE short_description like '%LAPTOP NỔI BẬT%' LIMIT 15";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
		
	@SuppressWarnings("unchecked")
	public List<Product> findHighlightScreens() {
		String sql = "SELECT * FROM greenmobile.tbl_product WHERE short_description like '%MÀN HÌNH NỔI BẬT%' LIMIT 10";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> findHighlightSmartTVs() {
		String sql = "SELECT * FROM greenmobile.tbl_product WHERE short_description like '%SMART TV NỔI BẬT%' LIMIT 10";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> findTablets() {
		String sql = "SELECT * FROM greenmobile.tbl_product WHERE short_description like '%TABLET%' LIMIT 20";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> findHighlightSpeakerAndHeadphones() {
		String sql = "SELECT * FROM greenmobile.tbl_product WHERE short_description like '%Loa - Tai nghe nổi bật%' LIMIT 20";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	
	
	@SuppressWarnings("unchecked")
	public List<Product> searchSameProducts(int categoryId, BigDecimal salePrice, String shortDescription, int productId) {
		String sql = "SELECT * FROM greenmobile.tbl_product where "
				+ "(short_description like '%" + shortDescription + "%' or category_id=" + categoryId 
				+ " or (sale_price between " + salePrice.subtract(new BigDecimal(1000000)) 
				+ " and " + salePrice.add(new BigDecimal(1000000)) + "))"
				+ " and id!=" + productId +" limit 5;";
		return (List<Product>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
	

	public List<Product> noPaginationSearchByKey(String key){
		String sql = "SELECT * FROM tbl_product p WHERE 1=1";
		//Tim theo keyword
		if (key != null && key.trim().length() > 0) {
			sql += " and (p.name like '%" + key + "%'" +
					" or p.short_description like '%" + key + "%')";
		}
		return super.executeNativeSql(sql);
	}
	
	public List<Product> noPaginationSearch(SearchModel s){
		String sql = "SELECT * FROM tbl_product p WHERE 1=1";
		//Tim theo keyword
		if (s.getKeyword() != null && s.getKeyword().trim().length() > 0) {
			sql += " and (p.name like '%" + s.getKeyword() + "%'" +
					" or p.short_description like '%" + s.getKeyword() + "%')";
		}
		return super.executeNativeSql(sql);
	}
	
	public List<Product> paginationSearch(SearchModel s){
		String sql = "SELECT * FROM tbl_product p WHERE 1=1";
		//Tim theo keyword
		if (s.getKeyword() != null && s.getKeyword().trim().length() > 0) {
			sql += " and (p.name like '%" + s.getKeyword() + "%'" +
					" or p.short_description like '%" + s.getKeyword() + "%')";
		}
		return super.executeNativeSql(sql, s.getCurrentPage(), s.getSizeOfPage());
	}
	
	
	
	// kiểm tra người dùng có upload avatar không
	public boolean isEmptyUploadAvatar(MultipartFile avatarFile) {
		if(avatarFile == null || avatarFile.getOriginalFilename().isEmpty()) {
			return true;
		}
		return false;
	}
	
	public boolean isEmptyUploadSticker(MultipartFile stickerFile) {
		if(stickerFile == null || stickerFile.getOriginalFilename().isEmpty()) {
			return true;
		}
		return false;
	}
	
	public boolean isEmptyUploadFile(MultipartFile[] imageFiles) {
		if(imageFiles == null || imageFiles.length<=0) {
			return true;
		}
		
//		if (imageFiles.length == 1 && imageFiles[0].getOriginalFilename().isEmpty()) {
//			return true;
//		}
		
		return false;
	}
	
	
	@Transactional //Annotation cho các tương tác (với entityManagement)
	public Product saveProduct(Product product, MultipartFile avatarFile, MultipartFile stickerFile, MultipartFile[] imageFiles) throws IllegalStateException, IOException {
		String path;
		
		// Save avatar
		if(!isEmptyUploadAvatar(avatarFile)) {
			//save 
			path = STORAGE_FOLDER + "/ProductPictures/Avatar/" + avatarFile.getOriginalFilename();
			avatarFile.transferTo(new File(path));
			
			// save path into database
			product.setAvatar("ProductPictures/Avatar/" + avatarFile.getOriginalFilename());
		}
		
		if(!isEmptyUploadAvatar(stickerFile)) {
			//save 
			path = STORAGE_FOLDER + "/ProductPictures/Sticker/" + stickerFile.getOriginalFilename();
			stickerFile.transferTo(new File(path));
			
			// save path into database
			product.setSticker("ProductPictures/Sticker/" + stickerFile.getOriginalFilename());
		}
		
		if (!isEmptyUploadFile(imageFiles)) {
			for(MultipartFile imageFile: imageFiles) {
				if(!imageFile.isEmpty()) {
					path = STORAGE_FOLDER + "/ProductPictures/Image/" + imageFile.getOriginalFilename();
					imageFile.transferTo(new File(path));
				
					ProductImage productImage = new ProductImage();
					productImage.setTitle(imageFile.getOriginalFilename());
					productImage.setPath("ProductPictures/Image/" + imageFile.getOriginalFilename());
					product.addRelationalProductImage(productImage);
				}
			}
		}
		return super.saveOrUpdate(product);
	}
	
	
	@Transactional
	public Product saveEditProduct(Product product, MultipartFile avatarFile, MultipartFile stickerFile, MultipartFile[] imageFiles) throws IllegalStateException, IOException {
		String path;
		
		//lay prpduct trong tbl_product
		Product dbProduct = super.getById(product.getId());
		
		// Kiểm tra xem người dùng có update avatar không
		if(!isEmptyUploadAvatar(avatarFile)) {
			// xóa avatar cũ
			File file = new File(STORAGE_FOLDER + dbProduct.getAvatar());
			file.delete();
			
			path = STORAGE_FOLDER + "ProductPictures/Avatar/" + avatarFile.getOriginalFilename();
			avatarFile.transferTo(new File(path));
			
			// save path into database
			product.setAvatar("ProductPictures/Avatar/" + avatarFile.getOriginalFilename());
		}else {
			// người dùng không update avatae mới
			product.setAvatar(dbProduct.getAvatar());
		}
		
		if(!isEmptyUploadAvatar(stickerFile)) {
			// xóa avatar cũ
			File file = new File(STORAGE_FOLDER + dbProduct.getSticker());
			file.delete();
			
			path = STORAGE_FOLDER + "ProductPictures/Sticker/" + stickerFile.getOriginalFilename();
			stickerFile.transferTo(new File(path));
			
			// save path into database
			product.setSticker("ProductPictures/Sticker/" + stickerFile.getOriginalFilename());
		}else {
			// người dùng không update avatar mới
			product.setSticker(dbProduct.getSticker());
		}
		
		if (!isEmptyUploadFile(imageFiles)) {
			for(MultipartFile x: imageFiles) {
				if(!x.isEmpty()) {
					path = STORAGE_FOLDER + "ProductPictures/Image/" + x.getOriginalFilename();
					x.transferTo(new File(path));
				
					ProductImage productImage = new ProductImage();
					productImage.setTitle(x.getOriginalFilename());
					productImage.setPath("ProductPictures/Image/" + x.getOriginalFilename());
					product.addRelationalProductImage(productImage);
				}
			}
		}
		return super.saveOrUpdate(product);
	}
	
	
	
	// delete product by id - delete from database
	@Transactional
	public void deleteProduct(Product product) {
		super.delete(product);
	}
	
}
