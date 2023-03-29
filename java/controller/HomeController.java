package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

import page.Page;
import service.HomeServiceImpl;
import vo.AboutImageVo;
import vo.HomeVo;

@RestController
public class HomeController {

@Autowired
HomeServiceImpl homeService;
@Autowired
JsonObject json;

	@RequestMapping(value = "home.main",method = {RequestMethod.GET,RequestMethod.POST}) 
	public ModelAndView mainView(ModelAndView mv, HttpServletRequest request) {

		request.setAttribute("hederTitle", "home");
		List<HomeVo> list = homeService.HomeVideoList();
		List<HomeVo> bannerList = homeService.homeBannerVideoList();
		mv.addObject("list",list);
		mv.addObject("bannerList",bannerList);
		mv.setViewName("board/home");
		return mv;
	}
	
	@RequestMapping(value = "contact.main",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView contactView(ModelAndView mv,HttpServletRequest request) {
		request.setAttribute("hederTitle", "contact");
		mv.setViewName("board/contact");
		return mv;
	}
	
	@RequestMapping(value = "about.main",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView aboutView(ModelAndView mv,HttpServletRequest request) {
		request.setAttribute("hederTitle", "aboutUs");
		List<AboutImageVo> aboutImageList = homeService.aboutImageList();
		mv.addObject("aboutImageList", aboutImageList);
		mv.setViewName("board/about");
		return mv;
	}
	
	@RequestMapping(value = "ourAct.main",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView ourAct(ModelAndView mv,HttpServletRequest request) {
		request.setAttribute("hederTitle", "ourAct");
		mv.setViewName("board/ourAct");
		return mv;
	}
	
	@RequestMapping(value="videoDetail.main",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView videoDetail(ModelAndView mv,@RequestParam("serial") String serial,HttpServletRequest request) {
		request.setAttribute("hederTitle", "videoDetail");
		HomeVo videoDetail = homeService.videoDetail(serial);
		List<HomeVo> latestVideoList = homeService.latestVideoList(serial);
		mv.addObject("videoDetail",videoDetail);
		mv.addObject("latestVideoList",latestVideoList);
		mv.setViewName("board/videoDetail");
		return mv;
	}
	
	@RequestMapping(value="bannerVideoDetail.main",method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView bannerVideoDetail(ModelAndView mv,@RequestParam("serial") String serial,HttpServletRequest request) {
		request.setAttribute("hederTitle", "videoDetail");
		HomeVo videoDetail = homeService.bannerVideoDetail(serial);
		mv.addObject("videoDetail",videoDetail);
		mv.setViewName("board/videoDetail");
		return mv;
	}
	
	
	@RequestMapping(value="still.main",method = {RequestMethod.GET})
	public ModelAndView still(ModelAndView mv,HttpServletRequest request) {
		request.setAttribute("hederTitle", "still");
		mv.setViewName("board/still");
		return mv;
	}


	
	
	
/* * -----------------------관리자 페이지------------------------------------------------------------------------------------* */
	
	@RequestMapping(value="admin/admin.main",method= {RequestMethod.GET})
	public ModelAndView admin(ModelAndView mv) {
		mv.setViewName("board/admin/admin");
		return mv;
	}
	
	@RequestMapping(value="admin/adminAbout.main",method= {RequestMethod.GET})
	public ModelAndView adminAbout(ModelAndView mv,Page page) {
		List<AboutImageVo> aboutList = homeService.adminAboutImageList(page);
		mv.addObject("aboutList", aboutList);
		mv.addObject("adminPage", page);
		mv.setViewName("board/admin/adminAbout");
		return mv;
	}
	
	@RequestMapping(value="admin/adminAboutInsert.main",method= {RequestMethod.GET,RequestMethod.POST})
	public String adminAboutInsert(@RequestParam("adminAboutFile") MultipartFile mf) {
		Map<String,String> resultMap = new HashMap<String, String>();
		String result = "";
		String fileRoot = "/web/tomcat/webapps/ROOT/resources/aboutImage/";
		 resultMap = homeService.fileUpload(mf, fileRoot);
		if(resultMap.get("result").equals("true")) {
			int insertResult = homeService.adminAboutInsertImage(resultMap.get("saveFileName").split("\\.")[0]);
			if(insertResult>0) {
				result ="true";
			} else {
				result ="false";
			}
		} else {
			result = "false";
		}
		return result;
	}
	
	@RequestMapping(value="admin/login.main",method= {RequestMethod.GET})
	public ModelAndView adminLogin(ModelAndView mv,HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("user_grade", "no");
		mv.setViewName("board/admin/login");
		return mv;
	}
	
	
	@RequestMapping(value="bbs/login.main",method= {RequestMethod.POST})
	public ModelAndView loginAction(ModelAndView mv,HttpServletResponse httpServletResponse, HttpServletRequest request, @RequestParam("id") String id, @RequestParam("password") String password) {
		String adminId = "heretofilm";
		String adminPassword= "abc123";
		HttpSession session = request.getSession();
		session.setAttribute("user_grade", "no");
		if (adminId.equals(id) && adminPassword.equals(password) ) {
			session.setAttribute("user_grade", "admin");
			mv.setViewName("board/admin/admin");
			return mv;
		} else {
		
			mv.setViewName("board/admin/login");
			return mv;
		}
		
	}
}
