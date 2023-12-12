package vn.dev.greenmobilek.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import vn.dev.greenmobilek.dto.Constants;
import vn.dev.greenmobilek.model.SlideImage;

@Service
public class SlideService extends BaseService<SlideImage> implements Constants{

	@Override
	public Class<SlideImage> clazz() {	
		return SlideImage.class;
	}

	public List<SlideImage> findAllActive() {
		return (List<SlideImage>) super.executeNativeSql("SELECT * FROM tbl_slide_image WHERE status=1");
	}
	
	
	public boolean isEmptyUploadSlide(MultipartFile avatarFile) {
		if(avatarFile == null || avatarFile.getOriginalFilename().isEmpty()) {
			return true;
		}
		return false;
	}
	
	@Transactional
	public SlideImage saveAddSlide(SlideImage slideImage, MultipartFile slideFile) {
		String path;
		
		
		if(!isEmptyUploadSlide(slideFile)) {
			//save 
			path = STORAGE_FOLDER + "/Slide/" + slideFile.getOriginalFilename();
			try {
				slideFile.transferTo(new File(path));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			
			// save path into database
			slideImage.setPath("Slide/" + slideFile.getOriginalFilename());
			slideImage.setName(slideFile.getOriginalFilename());
		}
		return super.saveOrUpdate(slideImage);
	}
	
	
	@Transactional
	public void deleteSlide(SlideImage image) {
		
		File file = new File(STORAGE_FOLDER + image.getPath());
		file.delete();
		super.delete(image);
	}
	
	
	@SuppressWarnings("unchecked")
	public List<SlideImage> listSlides() {
		String sql = "SELECT * FROM greenmobile.tbl_slide_image WHERE status=1";
		return (List<SlideImage>) entityManager.createNativeQuery(sql, clazz()).getResultList();
	}
}