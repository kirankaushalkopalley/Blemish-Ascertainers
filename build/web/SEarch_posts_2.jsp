
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


    if (request.getAttribute("msg") != null) {
  %>
<center>
  <h3 style="color:tomato;"><%=request.getAttribute("msg")%></h3>
</center>
<%
  }
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
              String search = request.getParameter("s");
            %><h3 style="color: red">Your Search For : <q style="color:blue;"><%=search%></q></h3><%
  ResultSet rs = j.ClassName.get_Search_Results(search);

  if(rs.next()){
  rs.previous();
  while (rs.next()) {
            %>
            <h3 class="post-title">
              <a href="Single_Post_de3tails.jsp?postid=<%=rs.getInt("Post_id")%>"><%=rs.getString("Post_title")%></a>
            </h3>
            <div class="post-meta clearfix">
              <span class="date"><%=rs.getString("date_of_post")%></span>
              <span class="category"><a href="#" title="Category"><%=rs.getString("Catid")%></a></span>
              <span class="comments"><a href="#" title="Post Tags"><%=rs.getString("Post_tags")%></a></span>
              <span class="like-count">66</span>
            </div><!-- end of post meta -->
            <%  }

  }else{
      %>
            
      <h1>
          No Posts Available !
      </h1>
            
            
            <%
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
          