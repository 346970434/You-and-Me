package mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import pojo.User;
import pojo.UserExample;

public abstract interface UserMapper
{
  public abstract int countByExample(UserExample paramUserExample);
  
  public abstract int deleteByExample(UserExample paramUserExample);
  
  public abstract int deleteByPrimaryKey(Integer paramInteger);
  
  public abstract int insert(User paramUser);
  
  public abstract int insertSelective(User paramUser);
  
  public abstract List<User> selectByExample(UserExample paramUserExample);
  
  public abstract User selectByPrimaryKey(Integer paramInteger);
  
  public abstract int updateByExampleSelective(@Param("record") User paramUser, @Param("example") UserExample paramUserExample);
  
  public abstract int updateByExample(@Param("record") User paramUser, @Param("example") UserExample paramUserExample);
  
  public abstract int updateByPrimaryKeySelective(User paramUser);
  
  public abstract int updateByPrimaryKey(User paramUser);
}
