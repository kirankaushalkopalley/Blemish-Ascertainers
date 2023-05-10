<%@page import="java.util.Date"%>
<%

    int postid = Integer.parseInt(request.getParameter("postid"));

    String desc = request.getParameter("desc");

    String em = session.getAttribute("emailid").toString();
    Date date_of_feedback = new Date();

    java.sql.Connection mycon = j.DB.DBConnection();


    String query = "insert into comments values(0,'" + date_of_feedback + "','" + desc + "','" + em + "'," + postid + ")";


    java.sql.Statement stmt = mycon.createStatement();


    //generate output


    int i = stmt.executeUpdate(query);

    if (i > 0) {
        response.sendRedirect("Single_Post_de3tails.jsp?postid=" + postid);
    }


%>

