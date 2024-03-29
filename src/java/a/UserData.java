package a;
// Generated Apr 4, 2014 10:32:34 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * UserData generated by hbm2java
 */
public class UserData  implements java.io.Serializable {


     private String email;
     private String username;
     private String password;
     private Date birthday;
     private String gender;
     private String phone;
     private String tou;

    public UserData() {
    }

    public UserData(String email, String username, String password, Date birthday, String gender, String phone, String tou) {
       this.email = email;
       this.username = username;
       this.password = password;
       this.birthday = birthday;
       this.gender = gender;
       this.phone = phone;
       this.tou = tou;
    }
   
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public Date getBirthday() {
        return this.birthday;
    }
    
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
    public String getGender() {
        return this.gender;
    }
    
    public void setGender(String gender) {
        this.gender = gender;
    }
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getTou() {
        return this.tou;
    }
    
    public void setTou(String tou) {
        this.tou = tou;
    }




}


