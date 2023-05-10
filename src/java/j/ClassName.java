/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package j;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

/**
 *
 * @author Sarala Balina
 */
public class ClassName {

    public static Connection con = null;
    public static Statement st = null;
    public static ResultSet rs = null;
    public static int i = 0;

    public static ResultSet get_POST_Data_algorithem(String ld, String lod) throws Exception {
        con = j.DB.DBConnection();
        String query = "";

        query = "SELECT * FROM `post_data` WHERE `date_of_post` between " + ld + " and " + lod + " ";

        st = con.createStatement();
        rs = st.executeQuery(query);

        return rs;
    }

    public static String get_Categories_logindate(String uid) throws Exception {
        con = j.DB.DBConnection();
        String query = "";

        query = "SELECT `searchdate` FROM `history` WHERE `searchbyid`='" + uid + "' and `status`='login' order by hid desc";


        st = con.createStatement();
        rs = st.executeQuery(query);
        String dt = "";
        //return rs;
        if (rs.next()) {
            dt = rs.getString(1);
        }
        return dt;


    }

    public static String get_Categories_logoutdate(String uid) throws Exception {
        con = j.DB.DBConnection();
        String query = "";

        query = "SELECT `searchdate` FROM `history` WHERE `searchbyid`='" + uid + "' and `status`='logout' order by hid desc";


        st = con.createStatement();
        rs = st.executeQuery(query);
        String dt = "";
        //return rs;
        if (rs.next()) {
            dt = rs.getString(1);
        }
        return dt;


    }

    public static ResultSet get_Categories_Data(String uid) throws Exception {
        con = j.DB.DBConnection();
        String query = "";
        if (uid == "") {
            query = "SELECT *  FROM `post_category_data`";
        } else {
            query = "SELECT *  FROM `post_category_data` WHERE `who_created` =  '" + uid + "'";
        }

        st = con.createStatement();
        rs = st.executeQuery(query);

        return rs;
    }

    public static ResultSet get_POST_Data_by_id(int postid) throws Exception {
        con = j.DB.DBConnection();
        String query = "";

        query = "SELECT *  FROM `post_data` WHERE `Post_id` = " + postid + " ";

        st = con.createStatement();
        rs = st.executeQuery(query);

        return rs;
    }

    public static ResultSet get_POST_Data(String uid) throws Exception {
        con = j.DB.DBConnection();
        String query = "";
        if (uid == "") {
            query = "SELECT *  FROM `post_data` order by Post_id desc";
        } else {
            query = "SELECT *  FROM `post_data` WHERE `Posted_by` = '" + uid + "' order by Post_id desc";
        }

        st = con.createStatement();
        rs = st.executeQuery(query);

        return rs;
    }

    public static ResultSet get_Search_Results_cat1(int uid) throws Exception {
        con = j.DB.DBConnection();
        String query = "";

        query = "SELECT * FROM `post_data` where `Catid` = " + uid + " order by Post_id desc";

        st = con.createStatement();
        rs = st.executeQuery(query);

        return rs;
    }

    public static ResultSet get_Search_Results_cat(int uid) throws Exception {
        con = j.DB.DBConnection();
        String query = "";

        query = "SELECT * FROM `post_data` where `Post_id` = " + uid + "";

        st = con.createStatement();
        rs = st.executeQuery(query);

        return rs;
    }

    public static ResultSet get_Search_Results(String uid) throws Exception {
        con = j.DB.DBConnection();
        String query = "";

        query = "SELECT *  FROM `post_data` WHERE `Post_title` LIKE '%" + uid + "%' OR `Post_tags` LIKE '%" + uid + "%' order by Post_id desc";

        st = con.createStatement();
        rs = st.executeQuery(query);

        return rs;
    }

    public static int check_content(String content) throws Exception {
        con = j.DB.DBConnection();
        String query = "";

        query = "SELECT * FROM `post_data`";


        st = con.createStatement();
        rs = st.executeQuery(query);
        String co = "";
        int id = 0;
        while (rs.next()) {
            co = rs.getString(3);
            if (co.contains(content) || content.contains(co)) {
                id = rs.getInt(1);
            }
        }
        return id;
    }

    public static ResultSet get_History(String tou) throws Exception {
        con = j.DB.DBConnection();
        String query = "";

        query = "SELECT * FROM `history` where `searchbyid`= '" + tou + "' order by hid desc";


        st = con.createStatement();
        rs = st.executeQuery(query);

        return rs;
    }

    public static ResultSet get_History1() throws Exception {
        con = j.DB.DBConnection();
        String query = "";

        query = "SELECT * FROM `history` order by hid desc";


        st = con.createStatement();
        rs = st.executeQuery(query);

        return rs;
    }

    public static ResultSet getEmailAvailable(String uid, String tou) throws Exception {
        con = j.DB.DBConnection();
        String query = "";
        if (tou.equals("admin")) {
            query = "SELECT *  FROM `admin_data` WHERE `Username` = '" + uid + "'";
        }

        if (tou.equals("user")) {
            query = "SELECT *  FROM `user_data` WHERE `Email` = '" + uid + "'";
        }

        st = con.createStatement();
        rs = st.executeQuery(query);

        return rs;
    }

    public static ResultSet getPasswordAvailable(String uid, String psw, String tou) throws Exception {
        con = j.DB.DBConnection();
        String query = "";
        if (tou.equals("admin")) {
            query = "SELECT *  FROM `admin_data` WHERE `Username` = '" + uid + "' AND `Password` = '" + psw + "'";
        } else {
            query = "SELECT *  FROM `user_data` WHERE `Email` = '" + uid + "' AND `Password` = '" + psw + "'";
        }

        st = con.createStatement();
        rs = st.executeQuery(query);

        return rs;
    }

    public static boolean addUser(String uname, String Email, String psw, String Birthday, String Gender, String phno, String tou) throws Exception {

        con = j.DB.DBConnection();
        String query = "";

        //query = "INSERT INTO `user_data`  VALUES (`" + uname + "`, `" + psw + "`, `" + Email + "`, `" + Birthday + "`, `" + Gender + "`, `" + phno + "`);";
        query = "INSERT INTO `user_data` "
                + "VALUES ('" + uname + "', '" + psw + "', '" + Email + "', '" + Birthday + "', '" + Gender + "', '" + phno + "','" + tou + "')";

        st = con.createStatement();
        i = st.executeUpdate(query);
        if (i < 0) {
        } else {
        }
        return true;
    }

    public static boolean add_History(int productid, String searchdate, String searchbyid, String sr) throws Exception {

        con = j.DB.DBConnection();
        String query = "";

        //query = "INSERT INTO `user_data`  VALUES (`" + uname + "`, `" + psw + "`, `" + Email + "`, `" + Birthday + "`, `" + Gender + "`, `" + phno + "`);";
        query = "INSERT INTO `history` VALUES "
                + "(NULL, '" + productid + "', '" + searchdate + "', '" + searchbyid + "', '" + sr + "');";

        st = con.createStatement();
        i = st.executeUpdate(query);
        if (i < 0) {
        } else {
        }
        return true;
    }

    public static boolean addPosts(String Post_title, String Post_description, String Posted_by, String date_of_post, int Catid, String status, String Post_url, String Post_tags) throws Exception {

        con = j.DB.DBConnection();
        String query = "";

        //query = "INSERT INTO `user_data`  VALUES (`" + uname + "`, `" + psw + "`, `" + Email + "`, `" + Birthday + "`, `" + Gender + "`, `" + phno + "`);";
        query = "INSERT INTO `post_data` "
                + "(`Post_id`, `Post_title`, `Post_description`, `Posted_by`, `date_of_post`, `status`,"
                + " `Post_url`, `Catid`, `Post_tags`) VALUES "
                + "(NULL, '" + Post_title + "',"
                + " '" + Post_description + "',"
                + " '" + Posted_by + "', "
                + "'" + date_of_post + "',"
                + " '" + status + "',"
                + " '" + Post_url + "', "
                + "" + Catid + ","
                + " '" + Post_tags + "')";

        st = con.createStatement();
        i = st.executeUpdate(query);
        if (i > 0) {
            return true;
        } else {
            return false;
        }

    }

    public static boolean addCategories(String Cattitle, Date date_of_creation,
            String who_created, String date_of_post,
            String caturl, Date last_edit_date)
            throws Exception {
        con = j.DB.DBConnection();
        String query = "";
        query = "INSERT INTO `post_category_data` (`Catid`, "
                + "`Cattitle`,"
                + " `date_of_creation`,"
                + " `who_created`,"
                + " `caturl`,"
                + " `status`,"
                + " `last_edit_date`) "
                + "VALUES (NULL,"
                + " '" + Cattitle + "',"
                + " '" + date_of_creation + "',"
                + " '" + who_created + "',"
                + " '" + caturl + "',"
                + " 'active',"
                + " '" + last_edit_date + "');";

        st = con.createStatement();
        i = st.executeUpdate(query);
        if (i > 0) {
            return true;
        } else {
            return false;
        }

    }

    public static boolean deletePost(int id) throws Exception {

        con = j.DB.DBConnection();
        String query = "";

        //query = "INSERT INTO `user_data`  VALUES (`" + uname + "`, `" + psw + "`, `" + Email + "`, `" + Birthday + "`, `" + Gender + "`, `" + phno + "`);";
        query = "delete  FROM post_data WHERE Post_id = " + id + "";

        st = con.createStatement();
        i = st.executeUpdate(query);
        if (i > 0) {
            return true;
        } else {
            return false;
        }

    }
}
