package a;
// Generated Apr 4, 2014 10:32:34 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * DiscussionData generated by hbm2java
 */
public class DiscussionData  implements java.io.Serializable {


     private Integer discussionId;
     private String discussedBy;
     private Date discussionDate;
     private String discussionDesc;
     private String status;

    public DiscussionData() {
    }

    public DiscussionData(String discussedBy, Date discussionDate, String discussionDesc, String status) {
       this.discussedBy = discussedBy;
       this.discussionDate = discussionDate;
       this.discussionDesc = discussionDesc;
       this.status = status;
    }
   
    public Integer getDiscussionId() {
        return this.discussionId;
    }
    
    public void setDiscussionId(Integer discussionId) {
        this.discussionId = discussionId;
    }
    public String getDiscussedBy() {
        return this.discussedBy;
    }
    
    public void setDiscussedBy(String discussedBy) {
        this.discussedBy = discussedBy;
    }
    public Date getDiscussionDate() {
        return this.discussionDate;
    }
    
    public void setDiscussionDate(Date discussionDate) {
        this.discussionDate = discussionDate;
    }
    public String getDiscussionDesc() {
        return this.discussionDesc;
    }
    
    public void setDiscussionDesc(String discussionDesc) {
        this.discussionDesc = discussionDesc;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }




}


