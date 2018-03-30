package pojo;

public class Picture
{
  private String picName;
  private String picUrl;
  
  public String getPicName()
  {
    return this.picName;
  }
  
  public void setPicName(String picName)
  {
    this.picName = (picName == null ? null : picName.trim());
  }
  
  public String getPicUrl()
  {
    return this.picUrl;
  }
  
  public void setPicUrl(String picUrl)
  {
    this.picUrl = (picUrl == null ? null : picUrl.trim());
  }
}
