package pojo;

public class User
{
  private Integer userid;
  private String username;
  private String password;
  
  public Integer getUserid()
  {
    return this.userid;
  }
  
  public void setUserid(Integer userid)
  {
    this.userid = userid;
  }
  
  public String getUsername()
  {
    return this.username;
  }
  
  public void setUsername(String username)
  {
    this.username = (username == null ? null : username.trim());
  }
  
  public String getPassword()
  {
    return this.password;
  }
  
  public void setPassword(String password)
  {
    this.password = (password == null ? null : password.trim());
  }
}
