package pojo;

import java.util.ArrayList;
import java.util.List;

public class PictureExample
{
  protected String orderByClause;
  protected boolean distinct;
  protected List<Criteria> oredCriteria;
  
  public PictureExample()
  {
    this.oredCriteria = new ArrayList();
  }
  
  public void setOrderByClause(String orderByClause)
  {
    this.orderByClause = orderByClause;
  }
  
  public String getOrderByClause()
  {
    return this.orderByClause;
  }
  
  public void setDistinct(boolean distinct)
  {
    this.distinct = distinct;
  }
  
  public boolean isDistinct()
  {
    return this.distinct;
  }
  
  public List<Criteria> getOredCriteria()
  {
    return this.oredCriteria;
  }
  
  public void or(Criteria criteria)
  {
    this.oredCriteria.add(criteria);
  }
  
  public Criteria or()
  {
    Criteria criteria = createCriteriaInternal();
    this.oredCriteria.add(criteria);
    return criteria;
  }
  
  public Criteria createCriteria()
  {
    Criteria criteria = createCriteriaInternal();
    if (this.oredCriteria.size() == 0) {
      this.oredCriteria.add(criteria);
    }
    return criteria;
  }
  
  protected Criteria createCriteriaInternal()
  {
    Criteria criteria = new Criteria();
    return criteria;
  }
  
  public void clear()
  {
    this.oredCriteria.clear();
    this.orderByClause = null;
    this.distinct = false;
  }
  
  protected static abstract class GeneratedCriteria
  {
    protected List<PictureExample.Criterion> criteria;
    
    protected GeneratedCriteria()
    {
      this.criteria = new ArrayList();
    }
    
    public boolean isValid()
    {
      return this.criteria.size() > 0;
    }
    
    public List<PictureExample.Criterion> getAllCriteria()
    {
      return this.criteria;
    }
    
    public List<PictureExample.Criterion> getCriteria()
    {
      return this.criteria;
    }
    
    protected void addCriterion(String condition)
    {
      if (condition == null) {
        throw new RuntimeException("Value for condition cannot be null");
      }
      this.criteria.add(new PictureExample.Criterion(condition));
    }
    
    protected void addCriterion(String condition, Object value, String property)
    {
      if (value == null) {
        throw new RuntimeException("Value for " + property + " cannot be null");
      }
      this.criteria.add(new PictureExample.Criterion(condition, value));
    }
    
    protected void addCriterion(String condition, Object value1, Object value2, String property)
    {
      if ((value1 == null) || (value2 == null)) {
        throw new RuntimeException("Between values for " + property + " cannot be null");
      }
      this.criteria.add(new PictureExample.Criterion(condition, value1, value2));
    }
    
    public PictureExample.Criteria andPicNameIsNull()
    {
      addCriterion("pic_name is null");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameIsNotNull()
    {
      addCriterion("pic_name is not null");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameEqualTo(String value)
    {
      addCriterion("pic_name =", value, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameNotEqualTo(String value)
    {
      addCriterion("pic_name <>", value, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameGreaterThan(String value)
    {
      addCriterion("pic_name >", value, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameGreaterThanOrEqualTo(String value)
    {
      addCriterion("pic_name >=", value, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameLessThan(String value)
    {
      addCriterion("pic_name <", value, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameLessThanOrEqualTo(String value)
    {
      addCriterion("pic_name <=", value, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameLike(String value)
    {
      addCriterion("pic_name like", value, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameNotLike(String value)
    {
      addCriterion("pic_name not like", value, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameIn(List<String> values)
    {
      addCriterion("pic_name in", values, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameNotIn(List<String> values)
    {
      addCriterion("pic_name not in", values, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameBetween(String value1, String value2)
    {
      addCriterion("pic_name between", value1, value2, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicNameNotBetween(String value1, String value2)
    {
      addCriterion("pic_name not between", value1, value2, "picName");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlIsNull()
    {
      addCriterion("pic_url is null");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlIsNotNull()
    {
      addCriterion("pic_url is not null");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlEqualTo(String value)
    {
      addCriterion("pic_url =", value, "picUrl");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlNotEqualTo(String value)
    {
      addCriterion("pic_url <>", value, "picUrl");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlGreaterThan(String value)
    {
      addCriterion("pic_url >", value, "picUrl");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlGreaterThanOrEqualTo(String value)
    {
      addCriterion("pic_url >=", value, "picUrl");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlLessThan(String value)
    {
      addCriterion("pic_url <", value, "picUrl");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlLessThanOrEqualTo(String value)
    {
      addCriterion("pic_url <=", value, "picUrl");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlLike(String value)
    {
      addCriterion("pic_url like", value, "picUrl");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlNotLike(String value)
    {
      addCriterion("pic_url not like", value, "picUrl");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlIn(List<String> values)
    {
      addCriterion("pic_url in", values, "picUrl");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlNotIn(List<String> values)
    {
      addCriterion("pic_url not in", values, "picUrl");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlBetween(String value1, String value2)
    {
      addCriterion("pic_url between", value1, value2, "picUrl");
      return (PictureExample.Criteria)this;
    }
    
    public PictureExample.Criteria andPicUrlNotBetween(String value1, String value2)
    {
      addCriterion("pic_url not between", value1, value2, "picUrl");
      return (PictureExample.Criteria)this;
    }
  }
  
  public static class Criterion
  {
    private String condition;
    private Object value;
    private Object secondValue;
    private boolean noValue;
    private boolean singleValue;
    private boolean betweenValue;
    private boolean listValue;
    private String typeHandler;
    
    public String getCondition()
    {
      return this.condition;
    }
    
    public Object getValue()
    {
      return this.value;
    }
    
    public Object getSecondValue()
    {
      return this.secondValue;
    }
    
    public boolean isNoValue()
    {
      return this.noValue;
    }
    
    public boolean isSingleValue()
    {
      return this.singleValue;
    }
    
    public boolean isBetweenValue()
    {
      return this.betweenValue;
    }
    
    public boolean isListValue()
    {
      return this.listValue;
    }
    
    public String getTypeHandler()
    {
      return this.typeHandler;
    }
    
    protected Criterion(String condition)
    {
      this.condition = condition;
      this.typeHandler = null;
      this.noValue = true;
    }
    
    protected Criterion(String condition, Object value, String typeHandler)
    {
      this.condition = condition;
      this.value = value;
      this.typeHandler = typeHandler;
      if ((value instanceof List)) {
        this.listValue = true;
      } else {
        this.singleValue = true;
      }
    }
    
    protected Criterion(String condition, Object value)
    {
      this(condition, value, null);
    }
    
    protected Criterion(String condition, Object value, Object secondValue, String typeHandler)
    {
      this.condition = condition;
      this.value = value;
      this.secondValue = secondValue;
      this.typeHandler = typeHandler;
      this.betweenValue = true;
    }
    
    protected Criterion(String condition, Object value, Object secondValue)
    {
      this(condition, value, secondValue, null);
    }
  }
  
  public static class Criteria
    extends PictureExample.GeneratedCriteria
  {}
}
