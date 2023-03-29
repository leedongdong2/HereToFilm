package service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import mapper.HomeMapper;
import page.Page;
import vo.AboutImageVo;
import vo.HomeVo;

@Service
public class HomeServiceImpl implements HomeService {
@Autowired
HomeMapper homeMapper;


@Override
public List<HomeVo> HomeVideoList() {
	List<HomeVo> list = homeMapper.HomeVideoList();
	return list;
}

@Override
public List<HomeVo> homeBannerVideoList() {
	List<HomeVo> bannerList = homeMapper.homeBannerVideoList();
	return bannerList;
}


@Override
public List<AboutImageVo> aboutImageList() {
	List<AboutImageVo> AboutImageList = homeMapper.aboutImageList(); 
	return AboutImageList;
}



@Override
public HomeVo videoDetail(String serial) {
	HomeVo videoDetail = homeMapper.videoDetail(serial);
	return videoDetail;
}

@Override
public List<HomeVo> latestVideoList(String serial) {
	List<HomeVo> latestVideoList = homeMapper.latestVideoList(serial);
	return latestVideoList;
}

@Override
public HomeVo bannerVideoDetail(String serial) {
	HomeVo bannerVideoDetail = homeMapper.bannerVideoDetail(serial);
	return bannerVideoDetail;
}

@Override
public List<AboutImageVo> adminAboutImageList(Page page) {
	int totList = homeMapper.aboutImageTotList();
	page.setTotList(totList);
	page.compute();
	List<AboutImageVo> list = homeMapper.adminAboutImageList(page);
	return list;
}

@Override
public Map<String,String> fileUpload(MultipartFile mf, String fileRoot) {
	Map<String,String> resultMap = new HashMap<String, String>();
	String result = "";
	String uploadPath = "";
	if(mf.getSize()>0) {
		String saveFileName = UUID.randomUUID().toString() + mf.getOriginalFilename();
		uploadPath = fileRoot + saveFileName;
		try {
			mf.transferTo(new File(uploadPath));
			result = "true";
			resultMap.put("result", result);
			resultMap.put("saveFileName", saveFileName);
		} catch (IllegalStateException e) {
			e.printStackTrace();
			resultMap.put("result", result);
		} catch (IOException e) {
			e.printStackTrace();
			resultMap.put("result", result);
		}
	}
	
	return resultMap;
}

@Override
public int adminAboutInsertImage(String saveFileName) {
	int insertResult = homeMapper.adminAboutInsertImage(saveFileName);
	return insertResult;
}











}
