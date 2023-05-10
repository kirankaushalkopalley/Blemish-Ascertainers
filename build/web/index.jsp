
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@include  file="inc/head.jsp" %>
</head>

<body>

    <!-- Start of Header -->
    <%@include  file="inc/mainmenu_beforelogin.jsp" %>
    <!-- End of Header -->

    <!-- Start of Search Wrapper -->

    <!-- End of Search Wrapper -->

    <!-- Start of Page Container -->
    <div class="page-container">
        <div class="container">
            <div class="row">

                <!-- start of page content -->
                <div class="span8 page-content">
                    <%


                        if (request.getAttribute("msg") != null) {
                    %>
                    <center>
                        <h3 s tyle="color:tomato;"><%=request.getAttribute("msg")%></h3>
                    </center>
                    <%
                        }
                    %>
                    <!-- Basic Home Page Template -->
                    <div class="row separator">



                        <%

                            if (session.getAttribute("tou") != null) {





                                String tou = session.getAttribute("tou").toString();
                                String emailid = session.getAttribute("emailid").toString();
                                if (tou.equals("user")) {




                                    if (request.getParameter("st") != null && request.getParameter("st").equals("r")) {
                                        int duration = Integer.parseInt(request.getParameter("duration"));
                                        int packId = Integer.parseInt(request.getParameter("packid"));
                                        String status = "active";
                                        Date selectDate = new Date();
                                        Date startDate = new Date();
                                        Date endDate = new Date();
                                        Calendar cal = Calendar.getInstance();
                                        cal.setTime(endDate);
                                        cal.add(Calendar.DATE, duration); // add 10 days
                                        endDate = cal.getTime();
                                        q.M.add_Org__Pack_Details(emailid, startDate, endDate, status, packId);
                                    }





                                    ArrayList list_LIST = new ArrayList();

                                    list_LIST = q.M.get_SINGLE_Org_PackagesData_by_org_id(emailid, "active");
                                    if (list_LIST.size() > 0) {

                                        if (q.M.checkDateailable(emailid)) {
                                            int k = q.M.update_Org_PackagesData_by_org_id(emailid);
                                            if (k > 0) {
                        %>
                        <h1><a href="User_Package_Details.jsp">Renewal Package</a>123</h1>
                        <%                               } else {
                            }
                        } else {
                            // check employees

                            Iterator it1 = list_LIST.iterator();
                            if (it1.hasNext()) {

                                a.UserPacks opi = (a.UserPacks) it1.next();
                                java.util.Date startDate = opi.getStartdate();
                                int packid = opi.getPackid();
                                java.util.Date endDate = opi.getEnddate();

                                int coT = q.M.count_Requester_Tasks(startDate, endDate, emailid);

                                ArrayList list = new ArrayList();
                                list = q.M.getPackagesData(packid);
                                //   if (false) {
                                if (list.size() > 0) {

                                    Iterator it = list.iterator();
                                    if (it.hasNext()) {
                                        a.Packages sp = (a.Packages) it.next();
                                        String name;
                                        int noOfTasks;
                                        name = sp.getName();
                                        //noOfEmployees = sp.getNoOfEmployees();
                                        noOfTasks = sp.getNumOfCodes();
                                        String cost = sp.getCost();
                                        String duration = sp.getDuration();

                        %>



                        <h3 style="">Number of Codes's you have added : <%=coT%> of <%=noOfTasks%></h3>

                        <%

                            session.setAttribute("noOfTasksadded", coT);
                            session.setAttribute("noOfTasks", noOfTasks);
                            session.setAttribute("pack_status", "active");

                            if (coT >= noOfTasks) {
                                int k = q.M.update_Org_PackagesData_by_org_id(emailid);
                                if (k > 0) {
                        %>
                        <h1><a href="User_Package_Details.jsp">Renewal Package</a>321</h1>
                        <%                            }
                        } else {
                        %>
                        <h4 style=""> <font color="red">After completing the Number of Post's your package will be closed</font></h4>
                            <%                        }


                                            }
                                        } else {
                                            out.print(emailid + tou);
                                        }
                                    }
                                }
                            } else {
                                session.setAttribute("pack_status", "complete");
                            %>
                        <h1><a href="User_Package_Details.jsp">Renewal Package</a>456</h1>
                        <%                }
                                }






                            }

                        %>


                    </div>
                </div>
                <!-- end of page content -->


                <!-- start of sidebar -->
                <aside class="span4 page-sidebar">

                    <jsp:include page="categories.jsp"/>

                </aside>
                <!-- end of sidebar -->
            </div>
        </div>
    </div>
