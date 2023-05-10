
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
                    <style>

                        input,select { border: 1px solid black; margin-bottom: .5em;  }
                        input.error { border: 1px solid red; margin-bottom: .5em; }
                        select.error { border: 1px solid red; margin-bottom: .5em; }
                        label.error {
                            background: url('images/unchecked.gif') no-repeat;
                            padding-left: 16px;
                            margin-left: .3em;
                            color:red;
                        }
                    </style>

                    <center>

                        <script src="./js/jquery-1.9.1.min.js"></script>
                        <script src="./js/jquery.validate.js"></script>
                        <script src="./js/additional-methods.js"></script>

                        <h2>Add Packages here..!</h2>

                        <%
                            if (request.getParameter("addpackages") != null) {
                                try {

                                    String name;
                                    int noOfTasks, cost, duration;
                                    name = request.getParameter("title");

                                    int numOfvideos = Integer.parseInt(request.getParameter("featuresone"));
                                    //int numOfsty = Integer.parseInt(request.getParameter("featurestwo"));

                                    cost = Integer.parseInt(request.getParameter("cost"));
                                    duration = Integer.parseInt(request.getParameter("days"));
                                    boolean val = q.M.addPackageDetails(name, duration + "", cost + "", numOfvideos, 0, 0);
                                    if (val) {
                                        out.print("SucessFully Added");

                                    } else {
                                        out.print("NOt Added");
                                    }

                                } catch (Exception ex) {
                                    out.println(ex);
                                }
                            }





                        %>
                        <form id="contactForm" class="message" action="createpackage.jsp" method="post">
                            <table   summary="Most Favorite Movies"> 



                                <tbody>
                                    <tr>
                                        <td>Package Title</td>
                                        <td><input type="text" name="title" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td>Number Of Tasks</td>
                                        <td><input type="text" name="featuresone" value="" placeholder="" /></td>
                                    </tr>
                                    
                                    
                                    <tr>
                                        <td>Cost</td>
                                        <td><input type="text" name="cost" value="" /></td>
                                    </tr>
                                    <tr>
                                        <td>Limit Days</td>
                                        <td><input type="text" name="days" value="" /></td>
                                    </tr>

                                    <tr>
                                        <td></td>
                                        <td><input type="submit" name="addpackages" value="Add Pachage" /></td>
                                    </tr>
                                </tbody>
                            </table>


                        </form>
                    </center>
                    <!-- start of sidebar -->
                   
        <script>
   

            $( "#contactForm" ).validate({
        
                rules:{
            
                    title:{
                        required: true
                
                       
        
                    },
                    featuresone:{
                        required: true
               
                    },
                    cost:{
                        required:true,
                        number: true
                
                
                    },
                    days:{
                        required:true ,
                        number: true
                    },
                    tou:{
                        required: true
                    }
            
                   
                }
		
                
            });
            
           
        </script>

        <%


        %><center>
            <h2>
                Available  Packages
            </h2>
            <%
                ArrayList list = new ArrayList();
                list = q.M.getPackagesData(0);
                if (list.size() > 0) {
                    Iterator it = list.iterator();
            %>
            <article class="box" id="home_featured21">
                <table class="message" >
                    <thead>
                        <tr>
                            <th>Package Title</th>
                            <th>Number of Tasks</th>
                           


                            <th>Cost</th>
                            <th>Limit Days</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            while (it.hasNext()) {
                                a.Packages sp = (a.Packages) it.next();
                                String title;
                                int featurestwo, featuresone, featuresthree, featuresfour, featuresfive;
                                String cost, days;
                                title = sp.getName();
                                featuresone = sp.getNumOfCodes();
                                featurestwo = sp.getNumOfDownload();

                                //featurestwo = sp.getNoOfTasks();
                                cost = sp.getCost();
                                days = sp.getDuration();
                        %>

                        <tr >

                            <td><%= title%></td>


                            <td><%=featuresone%></td>
                         



                            <td><%= cost%></td>


                            <td><%= days%></td>

                        </tr>






                        <%
                            }
                        %>     </tbody></table>   
            </article>
        </center><%
        } else {

        %>
        <center>
            <h2>
                <a href=""> No Packages Are Available </a>
            </h2>
        </center>



        <%    }

        %>
 <aside class="span4 page-sidebar">



                        <jsp:include page="categories.jsp"/>

                    </aside>
                    <!-- end of sidebar -->
                </div>
            </div>
        </div>
