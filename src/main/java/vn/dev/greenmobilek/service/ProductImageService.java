package vn.dev.greenmobilek.service;

import java.util.List;

import vn.dev.greenmobilek.model.ProductImage;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductImageService extends BaseService<ProductImage> {
	
	@Override
	public Class<ProductImage> clazz() {
		// TODO Auto-generated method stub
		return ProductImage.class;
	}
	
	
	public List<ProductImage> getImageByProductId(Integer productId){
		// tao cau lenh truy van
		String sql = "SELECT * FROM tbl_product_image WHERE product_id=" + productId;
		return super.executeNativeSql(sql);
	}
	
	// delete image
	@Transactional
	public void deleteImage(ProductImage productImage) { // xoa anh trong tbl_product_image.
		super.delete(productImage);
	}
}
