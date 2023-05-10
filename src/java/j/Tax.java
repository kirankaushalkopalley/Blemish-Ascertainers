/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package j;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Sarala Balina
 */
public class Tax {

  public static Connection con = null;
  public static Statement st = null;
  public static ResultSet rs = null;
  public static int i = 0;

  public static int get_month_bills_cost(String month, String year, String owner_id, String tou) throws Exception {


    con = j.DB.DBConnection();
    String query = "";


    if (tou.equals("owner")) {
       query = "SELECT SUM(`total_bill_cost`) as totalcost FROM `billdata` WHERE month(`billdate`) = '" + month + "' and year(`billdate`) = '" + year + "' and owner_id='" + owner_id + "'";
    }

    if (tou.equals("subtax")) {
       query = "SELECT SUM(`total_bill_cost`) as totalcost FROM `billdata` WHERE month(`billdate`) = '" + month + "' and year(`billdate`) = '" + year + "' and sub_tax_officer_id='" + owner_id + "'";
    }
    if (tou.equals("head")) {
       query = "SELECT SUM(`total_bill_cost`) as totalcost FROM `billdata` WHERE month(`billdate`) = '" + month + "' and year(`billdate`) = '" + year + "' and head_id=''";
    }

   


    st = con.createStatement();
    rs = st.executeQuery(query);
    int totalcost = 0;
    if (rs.next()) {

      totalcost = rs.getInt("totalcost");


    }
    return totalcost;
  }
}
