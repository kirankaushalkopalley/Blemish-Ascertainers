/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package q;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;


import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author SattvaQ
 */
public class M {

    private static SessionFactory factory;

     public static int count_Requester_Tasks(Date startdate, Date endDate, String requesterid) {
    try {

      factory = new Configuration().configure().buildSessionFactory();

    } catch (Throwable ex) {
      // return "Failed to create sessionFactory object." + ex;
    }
    ArrayList ll = null;
    Session session = factory.openSession();
    Transaction tx = null;
    try {

      tx = session.beginTransaction();
//a.PostData
      String hql = "FROM PostData WHERE dateOfPost>=:startdate and dateOfPost<=:endDate and postedBy=:orgHead";

      Query q = session.createQuery(hql);

      q.setParameter("startdate", startdate);
      q.setParameter("endDate", endDate);
      q.setParameter("orgHead", requesterid);

      ll = (ArrayList) q.list();
      return ll.size();


    } catch (HibernateException e) {


      if (tx != null) {
        tx.rollback();
      }
      // return e.toString();
    } finally {
      session.close();
    }
    return ll.size();
  }
     
     public static int update_Org_PackagesData_by_org_id(String orgid) {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {
            // return "Failed to create sessionFactory object." + ex;
        }
        int list = 0;
        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            // do some work
//a.UserPacks

            Query q = session.createQuery("update UserPacks set status='complete' where userid=:orgid and status='active'");

            q.setParameter("orgid", orgid);

            list = q.executeUpdate();
            tx.commit();
            return list;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return list;
    }
    
     public static boolean checkDateailable(String orgid) {
        try {
            factory = new Configuration().configure().buildSessionFactory();
        } catch (Throwable ex) {
            //   return "Failed to create sessionFactory object." + ex;
        }
        Session session = factory.openSession();
        Transaction tx = null;
        try {
            Date totday = new Date();
            tx = session.beginTransaction();

            String hql = "FROM UserPacks WHERE enddate<:totday and status='active' and userid=:orgid";

            Query q = session.createQuery(hql);

            q.setParameter("totday", totday);
            q.setParameter("orgid", orgid);


            ArrayList ll = (ArrayList) q.list();
            if (ll.size() > 0) {
                return true;
            } else {
                return false;
            }


        } catch (HibernateException e) {


            if (tx != null) {
                tx.rollback();
            }
            // return e.toString();
        } finally {
            session.close();
        }

        return true;
    }

    public static String add_Org__Pack_Details(String userid, Date startdate, Date enddate, String status, int packid) {
// insetStudentDetails is a method

        try {

            factory = new Configuration().configure().buildSessionFactory();

        } catch (Throwable ex) {

            return "Failed to create sessionFactory object." + ex;

        }
        Session session = factory.openSession();
        Transaction tx = null;
        try {

            tx = session.beginTransaction();

            a.UserPacks ss = new a.UserPacks(userid, startdate, enddate, status, packid);
            session.save(ss);
            // here the values stored in database
            tx.commit();
        } catch (HibernateException e) {


            if (tx != null) {
                tx.rollback();
            }
            return e.toString();
        } finally {
            session.close();
        }

        return "ok";


    }

    public static ArrayList get_categories_check() {
        try {
            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {
            //   return "Failed to create sessionFactory object." + ex;
        }
        Session session = factory.openSession();
        ArrayList list = new ArrayList();
        try {

            //   session = factory.openSession();


//a.Algorithm
            Query e = session.createQuery("from a.Algorithm");



            list = (ArrayList) e.list();


            return list;


        } catch (Exception ex) {
            //return ex.getMessage();
        } finally {
            session.close();
        }
        return list;
    }

    public static ArrayList get_SINGLE_Org_PackagesData_by_org_id(String orgid, String status) {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {
            // return "Failed to create sessionFactory object." + ex;
        }
        ArrayList list = new ArrayList();
        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            // do some work

            Query q = session.createQuery("from UserPacks where userid=:orgid and status=:status");
            q.setParameter("orgid", orgid);
            q.setParameter("status", status);
            list = (ArrayList) q.list();
            tx.commit();
            return list;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return list;
    }

    public static boolean delete_Categories(int courseid, String orgid) {

        factory = new Configuration() {
        }.configure().buildSessionFactory();
        Session session = factory.openSession();
        Transaction tx = null;
        try {

            int data;
            tx = session.beginTransaction();
            Query query = null;
            query = session.createQuery("delete a.CourcesData where courseid = :courseid and orgid=:orgid");
            query.setParameter("courseid", courseid);
            query.setParameter("orgid", orgid);
            // exicute and convert into List 
            data = query.executeUpdate();
            tx.commit();

            if (data > 0) {
                return true;
            } else {
                return false;
            }



        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return true;
    }

    public static ArrayList get_all_courses() throws Exception {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {
            //  return "Failed to create sessionFactory object." + ex;
        }

        ArrayList data = null;
        Session session = factory.openSession();
        Transaction tx = null;

        try {

            tx = (Transaction) session.beginTransaction();



            Query query = null;




            query = session.createQuery("from a.CourcesData order by orgid");



            // exicute and convert into List 
            data = (ArrayList) query.list();


            return data;


        } catch (HibernateException e) {


            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e);
        } finally {
            session.close();
        }
        return data;

    }

    public static ArrayList get_courses_by_org(String orgid) throws Exception {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {
            //  return "Failed to create sessionFactory object." + ex;
        }

        ArrayList data = null;
        Session session = factory.openSession();
        Transaction tx = null;

        try {

            tx = (Transaction) session.beginTransaction();



            Query query = null;




            query = session.createQuery("from a.CourcesData where orgid=:orgid");

            query.setParameter("orgid", orgid);


            // exicute and convert into List 
            data = (ArrayList) query.list();


            return data;


        } catch (HibernateException e) {


            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e);
        } finally {
            session.close();
        }
        return data;

    }

    public static ArrayList get_List_Of_TeamMembers(String emailid) throws Exception {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {
            //  return "Failed to create sessionFactory object." + ex;
        }

        ArrayList data = null;
        Session session = factory.openSession();
        Transaction tx = null;

        try {

            tx = (Transaction) session.beginTransaction();



            Query query = null;




            query = session.createQuery("from a.TraineeData where orgHead=:emailid");


            // create Query 


            query.setParameter("emailid", emailid);
            // exicute and convert into List 
            data = (ArrayList) query.list();


            return data;


        } catch (HibernateException e) {


            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e);
        } finally {
            session.close();
        }
        return data;

    }

    public static ArrayList get_fb_Of_trainee_to__trainer(String trainee, String trainer) throws Exception {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {
            //return "Failed to create sessionFactory object." + ex;
        }

        ArrayList data = null;
        Session session = factory.openSession();
        Transaction tx = null;

        try {
            tx = session.beginTransaction();
            Query query = null;
            query = session.createQuery("from a.Feedbacksystem where trainee=:trainee and trainer=:trainer");
            query.setParameter("trainee", trainee);
            query.setParameter("trainer", trainer);
            data = (ArrayList) query.list();
            return data;
        } catch (HibernateException e) {
//return "" + e;

            if (tx != null) {
                tx.rollback();
                //return e;
            }

        } finally {
            session.close();
        }
        return data;

    }

    public static ArrayList get_List_Of_TeamMembers_by_TL(String emailid) throws Exception {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {
            //  return "Failed to create sessionFactory object." + ex;
        }

        ArrayList data = null;
        Session session = factory.openSession();
        Transaction tx = null;

        try {

            tx = (Transaction) session.beginTransaction();



            Query query = null;





            query = session.createQuery("from a.TraineeData where teamLeader=:emailid");


            // create Query 


            query.setParameter("emailid", emailid);
            // exicute and convert into List 
            data = (ArrayList) query.list();


            return data;


        } catch (HibernateException e) {


            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e);
        } finally {
            session.close();
        }
        return data;

    }

    public static ArrayList getTeamLeaderList(String orghead) {




        factory = new Configuration() {
        }.configure().buildSessionFactory();


        ArrayList data = null;
        Session session = factory.openSession();
        Transaction tx = null;

        try {

            tx = (Transaction) session.beginTransaction();



            Query query = null;


            query = session.createQuery("from a.TrainerData where orgHead=:emailid");

            // create Query 


            query.setParameter("emailid", orghead);
            // exicute and convert into List 
            data = (ArrayList) query.list();

            return data;

        } catch (HibernateException e) {


            if (tx != null) {
                tx.rollback();
            }

        } finally {
            session.close();
        }

        return data;

    }

    public static ArrayList get_List_Of_TeamLeaders(String emailid) throws Exception {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {
            //  return "Failed to create sessionFactory object." + ex;
        }

        ArrayList data = null;
        Session session = factory.openSession();
        Transaction tx = null;

        try {

            tx = (Transaction) session.beginTransaction();



            Query query = null;




            query = session.createQuery("from a.TrainerData where orgHead=:emailid");


            // create Query 


            query.setParameter("emailid", emailid);
            // exicute and convert into List 
            data = (ArrayList) query.list();


            return data;


        } catch (HibernateException e) {


            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e);
        } finally {
            session.close();
        }
        return data;

    }

    public static ArrayList get_Single_Of_TeamLeaders(String emailid) throws Exception {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {
            //  return "Failed to create sessionFactory object." + ex;
        }

        ArrayList data = null;
        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = (Transaction) session.beginTransaction();
            Query query = null;

            query = session.createQuery("from a.TrainerData where email=:emailid");
            // create Query 
            query.setParameter("emailid", emailid);
            // exicute and convert into List 
            data = (ArrayList) query.list();
            return data;
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            System.out.println(e);
        } finally {
            session.close();
        }
        return data;
    }

    public static boolean addPackageDetails(String name, String duration, String cost, int numOfCodes, int numOfShare, int numOfDownload) {


        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            // do some work

            a.Packages sp = new a.Packages(name, duration, cost, numOfCodes, numOfShare, numOfDownload);

            session.save(sp);

            tx.commit();

        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }




        return true;
    }

    public static ArrayList getPackagesData(int packId) {
        factory = new Configuration() {
        }.configure().buildSessionFactory();
        ArrayList list = new ArrayList();
        Session session = factory.openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            // do some work
//a.Packages
            Query query = null;
            if (packId == 0) {
                query = session.createQuery("from a.Packages");
            } else {
                query = session.createQuery("from a.Packages where packageid=:packId");
                query.setParameter("packId", packId);
            }

            list = (ArrayList) query.list();
            tx.commit();
            return list;
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
        } finally {
            session.close();
        }
        return list;
    }

    public static String getEmailAvailable(String emailid, String tou) throws Exception {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {

            return "123Failed to create sessionFactory object." + ex;

        }

        Session session = factory.openSession();
        Transaction tx = null;

        try {
            List data;
            tx = (Transaction) session.beginTransaction();



            Query query = null;



            if (tou.equals("admin")) {
                query = session.createQuery("from a.AdminData where userId = :emailid");
            } else if (tou.equals("organization")) {
                query = session.createQuery("from a.Orgheaddata where email = :emailid");
            } else if (tou.equals("trainer")) {
                query = session.createQuery("from a.TrainerData where email = :emailid");
            } else if (tou.equals("trainee")) {
                query = session.createQuery("from a.TraineeData where email = :emailid");
            }



            // create Query 


            query.setParameter("emailid", emailid);
            // exicute and convert into List 
            data = query.list();

            if (data.size() > 0) {
                return "" + data.size();
            } else {
                return "0";
            }

        } catch (HibernateException e) {


            if (tx != null) {
                tx.rollback();
            }
            return e.toString();
        } finally {
            session.close();
        }


    }

    public static ArrayList get_Profile_Details(String emailid, String tou) throws Exception {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {
            //  return "Failed to create sessionFactory object." + ex;
        }

        Session session = factory.openSession();
        Transaction tx = null;
        List data = null;
        try {

            tx = (Transaction) session.beginTransaction();



            Query query = null;



            if (tou.equals("admin")) {
                query = session.createQuery("from a.AdminData where userId = :emailid");
            } else if (tou.equals("organization")) {
                query = session.createQuery("from a.Orgheaddata where email = :emailid");
            } else if (tou.equals("trainer")) {
                query = session.createQuery("from a.TrainerData where email = :emailid");
            } else if (tou.equals("trainee")) {
                query = session.createQuery("from a.TraineeData where email = :emailid");
            }

            // create Query 


            query.setParameter("emailid", emailid);
            // exicute and convert into List 
            data = query.list();


            return (ArrayList) data;


        } catch (HibernateException e) {


            if (tx != null) {
                tx.rollback();
            }
            //return e.toString();
        } finally {
            session.close();
        }

        return (ArrayList) data;
    }

    public static String getPasswordAvailable(String loginid, String password, String tou) throws Exception {
        try {

            factory = new Configuration() {
            }.configure().buildSessionFactory();

        } catch (Throwable ex) {

            return "456Failed to create sessionFactory object." + ex;

        }

        Session session = factory.openSession();
        Transaction tx = null;

        try {
            List data;
            tx = (Transaction) session.beginTransaction();

            // create Query 


            Query query = null;

            if (tou.equals("admin")) {
                query = session.createQuery("from a.AdminData where userId = :emailid and password=:password");
            } else if (tou.equals("organization")) {
                query = session.createQuery("from a.Orgheaddata where email = :emailid and password=:password");
            } else if (tou.equals("trainer")) {
                query = session.createQuery("from a.TrainerData where email = :emailid and password=:password");
            } else if (tou.equals("trainee")) {
                query = session.createQuery("from a.TraineeData where email = :emailid and password=:password");
            }



            query.setParameter("emailid", loginid);
            query.setParameter("password", password);
            // exicute and convert into List 


            data = query.list();

            if (data.size() > 0) {
                return "" + data.size();
            } else {
                return "0";
            }

        } catch (HibernateException e) {


            if (tx != null) {
                tx.rollback();
            }
            return e.toString();
        } finally {
            session.close();
        }


    }

    public static ArrayList change_String_to_Array_List(String str, String delim) {
        ArrayList list = new ArrayList();

        for (StringTokenizer stringTokenizer = new StringTokenizer(str, delim); stringTokenizer.hasMoreTokens();) {
            String token = stringTokenizer.nextToken();
            list.add(token);
        }
        return list;

    }

    public static int match_Word_Count(ArrayList one, String message) {
        int one_count = one.size();

        int count = 0;

        for (int i = 0; i < one.size(); i++) {

            if (message.contains(one.get(i) + "")) {

                count++;

            }
        }

        return count;
    }
}
