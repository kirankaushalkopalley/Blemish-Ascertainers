<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%



    java.util.Calendar newCal = Calendar.getInstance();

    newCal.setTime(new Date());
    String emailid = session.getAttribute("emailid").toString();
    String tou = session.getAttribute("tou").toString();
    int y = newCal.get(Calendar.YEAR);
    int d = newCal.get(Calendar.DATE);
    int m = newCal.get(Calendar.MONTH)+1;

    String dtdd = y + "-" + m + "-" + d;
    if (tou.equals("user")) {
        String sr = "logout";
        j.ClassName.add_History(0, dtdd, emailid, sr);
    }







    session.invalidate();

    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
    request.setAttribute("msg", " Logged out Successfully !");
    rd.forward(request, response);



%>
