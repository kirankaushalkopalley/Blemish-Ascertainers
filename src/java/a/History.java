package a;
// Generated Apr 4, 2014 10:32:34 PM by Hibernate Tools 3.2.1.GA



/**
 * History generated by hbm2java
 */
public class History  implements java.io.Serializable {


     private Integer hid;
     private int productid;
     private String searchdate;
     private String searchbyid;
     private String status;

    public History() {
    }

    public History(int productid, String searchdate, String searchbyid, String status) {
       this.productid = productid;
       this.searchdate = searchdate;
       this.searchbyid = searchbyid;
       this.status = status;
    }
   
    public Integer getHid() {
        return this.hid;
    }
    
    public void setHid(Integer hid) {
        this.hid = hid;
    }
    public int getProductid() {
        return this.productid;
    }
    
    public void setProductid(int productid) {
        this.productid = productid;
    }
    public String getSearchdate() {
        return this.searchdate;
    }
    
    public void setSearchdate(String searchdate) {
        this.searchdate = searchdate;
    }
    public String getSearchbyid() {
        return this.searchbyid;
    }
    
    public void setSearchbyid(String searchbyid) {
        this.searchbyid = searchbyid;
    }
    public String getStatus() {
        return this.status;
    }
    
    public void setStatus(String status) {
        this.status = status;
    }




}


