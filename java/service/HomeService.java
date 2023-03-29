package service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import page.Page;
import vo.AboutImageVo;
import vo.HomeVo;

public interface HomeService {
	public List<HomeVo> HomeVideoList();
	public List<HomeVo> homeBannerVideoList();
	public List<AboutImageVo> aboutImageList();
	public List<AboutImageVo> adminAboutImageList(Page page);
	public HomeVo videoDetail(String serial);
	public HomeVo bannerVideoDetail(String serial);
	public List<HomeVo> latestVideoList(String serial);
	public Map<String,String> fileUpload(MultipartFile mf,String fileRoot);
	public int adminAboutInsertImage(String saveFileName);
}
