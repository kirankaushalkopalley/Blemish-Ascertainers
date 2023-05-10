
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@include  file="inc/head.jsp" %>
</head>

<body>

    <!-- Start of Header -->
    <%@include  file="inc/mainmenu_beforelogin.jsp" %>
    <!-- End of Header -->

    <!-- Start of Search Wrapper -->


    <!-- End of Search Wrapper -->
    <%
        if (request.getParameter("msg") != null) {
    %>
<center>
    <h3 style="color:tomato;"><%=request.getParameter("msg")%></h3>
</center>
<%
    }


    if (session.getAttribute("emailid") != null) {
        String emailid = session.getAttribute("emailid").toString();
        if (request.getAttribute("msg") != null) {
%>
<center>
    <h3 style="color:tomato;"><%=request.getAttribute("msg")%></h3>
</center>
<%
    }


    int productid = 0;


    productid = Integer.parseInt(request.getParameter("postid"));


    java.util.Calendar newCal = Calendar.getInstance();

    newCal.setTime(new Date());

    int y = newCal.get(Calendar.YEAR);
    int d = newCal.get(Calendar.DATE);
    int m = newCal.get(Calendar.MONTH);

    String dtdd = y + "-" + m + "-" + d;

    String sr = "search";
    j.ClassName.add_History(productid, dtdd, emailid, sr);




%>
<!-- Start of Page Container -->
<div class="page-container">
    <div class="container">
        <div class="row">

            <!-- start of page content -->
            <div class="span8 main-listing">

                <article class="format-standard type-post hentry clearfix">

                    <header class="clearfix">

                        <%

                            int Post_id = Integer.parseInt(request.getParameter("postid"));


                            ResultSet rs = j.ClassName.get_POST_Data_by_id(Post_id);

                            while (rs.next()) {
                        %>
                        <h3 class="post-title">
                            <a href="#"><%=rs.getString("Post_title")%></a>
                        </h3>
                        <div class="post-meta clearfix">
                            <span class="date"><%=rs.getString("date_of_post")%></span>
                            <span class="category"><a href="#" title="Category"><%=rs.getString("Catid")%></a></span>
                            <span class="comments"><a href="#" title="Post Tags"><%=rs.getString("Post_tags")%></a></span>
                            <span class="like-count"></span>
                        </div><!-- end of post meta -->

                        <h3> Post URL </h3>

                        <blockquote><p>

                                <%=rs.getString("Post_url")%>
                            </p></blockquote>
                        <h3>Post Description</h3>



                        <p><%=rs.getString("Post_description")%></p>

                        <div class="post-meta clearfix">

                            <span class="category"><a href="#" title="Keys">Key Words : <%=rs.getString("Post_tags")%></a></span>

                        </div>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=http://localhost:8084/focus/Single_Post_de3tails.jsp?postid=<%=Post_id%>"><img src="images/facebook_1.png" width="30" height="70" alt="facebook"/>
                        </a>

                        <a href="https://twitter.com/home?status=http://localhost:8084/focus/Single_Post_de3tails.jsp?postid=<%=Post_id%>16"><img src="images/twitter_1.png" width="32" height="32" alt="twitter_1"/>
                        </a> 
                        <a href="https://www.linkedin.com/shareArticle?mini=true&url=http://localhost:8084/focus/Single_Post_de3tails.jsp?postid=<%=Post_id%>&title=&summary=&source="><img src="images/linkedin.png" width="32" height="32" alt="linkedin"/>
                        </a>

                        <form action="comment.jsp" method="GET">
                            <input placeholder="Enter Valid Email ID ! " style="margin-left: 0px; margin-right: 0px; width: 498px;"type="text" name="mailsend" value="" />
                            <textarea placeholder="Write Description " style="margin-left: 0px; margin-right: 0px; width: 598px;" name="desc" rows="4" cols="20"></textarea>
                            <input type="hidden" name="postid" value="<%=productid%>" /> 
                            <input type="submit" value="Send Mail" /> 
                        </form>
                        <form action="PostComment.jsp" method="GET">

                            <textarea placeholder="POST Your Comment" style="margin-left: 0px; margin-right: 0px; width: 598px;" name="desc" rows="4" cols="20"></textarea>
                            <input type="hidden" name="postid" value="<%=productid%>" /> 
                            <input type="submit" value="Comment" /> 
                        </form>
                        <%

                            java.sql.Connection mycon = j.DB.DBConnection();
                            //String givenby = session.getAttribute("semail").toString();
                            String q = "SELECT * FROM `comments` WHERE `postid`=" + Post_id + "";
                            java.sql.Statement stmt = mycon.createStatement();
                            ResultSet rs1 = stmt.executeQuery(q);
                            while (rs1.next()) {

                        %>

                        <div class="post-meta clearfix">

                            <span class="category">Comment Date <a href="#" title="Keys"><%=rs1.getString(2)%></a></span>
                            <%=rs1.getString(3)%>
                        </div>


                        <%                                    }

                        %>
                </article>



                <%  }

                    } else {

                        response.sendRedirect("userlogin.jsp");
                    }
                %>





                </header>


                </article>

                <!-- Basic Home Page Template -->
                <div class="row separator">


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
