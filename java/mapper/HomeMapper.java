package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import page.Page;
import vo.AboutImageVo;
import vo.HomeVo;

@Mapper
public interface HomeMapper {
	public List<HomeVo> HomeVideoList();
	public List<HomeVo> homeBannerVideoList();
	public String contactImage();
	public List<AboutImageVo> aboutImageList();
	public List<AboutImageVo> adminAboutImageList(Page page);
	public int aboutImageTotList();
	public HomeVo videoDetail(String serial);
	public HomeVo bannerVideoDetail(String serial);
	public List<HomeVo> latestVideoList(String serial);
	public int adminAboutInsertImage(String saveFileName);
}
