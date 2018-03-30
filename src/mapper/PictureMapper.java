package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.Picture;
import pojo.PictureExample;

public abstract interface PictureMapper
{
  public abstract int countByExample(PictureExample paramPictureExample);
  
  public abstract int deleteByExample(PictureExample paramPictureExample);
  
  public abstract int insert(Picture paramPicture);
  
  public abstract int insertSelective(Picture paramPicture);
  
  public abstract List<Picture> selectByExample(PictureExample paramPictureExample);
  
  public abstract int updateByExampleSelective(@Param("record") Picture paramPicture, @Param("example") PictureExample paramPictureExample);
  
  public abstract int updateByExample(@Param("record") Picture paramPicture, @Param("example") PictureExample paramPictureExample);
}
