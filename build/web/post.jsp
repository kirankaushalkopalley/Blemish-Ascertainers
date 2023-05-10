
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@include  file="inc/head.jsp" %>
</head>
<script src="./js/jquery-1.9.1.min.js"></script>
<script src="./js/jquery.validate.js"></script>
<script src="./js/additional-methods.js"></script>

<div>
    <style>

        input,select { border: 1px solid black; margin-bottom: .5em;  }
        input.error { border: 1px solid red; margin-bottom: .5em; }
        select.error { border: 1px solid red; margin-bottom: .5em; }
        label.error {
            background: url('images/unchecked.gif') no-repeat;
            padding-left: 10px;
            margin-left: .3em;
        }

        label.valid {
            background: url('images/checked.gif') no-repeat;
            display: block;
            width: 16px;
            height: 16px;
        }
    </style>
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

                        <link rel="stylesheet" type="text/css" href="./css/style.css">



                        <!--BEGIN #signup-form -->
                        <div id="signup-form">

                            <!--BEGIN #subscribe-inner -->
                            <div id="signup-inner">

                                <div class="clearfix" id="header">

                                    <img id="signup-icon" src="./images/signup.png" alt="" />

                                    <h1>Add New Post</h1>


                                </div>
                                <!-- <p>Please complete the fields below, ensuring you use a valid email address as you will be sent a validation code which you will need the first time you login to the site.</p> -->
                                <%
                                    String emailid = session.getAttribute("emailid").toString();
                                    if (request.getParameter("title") != null) {
                                        int category = Integer.parseInt(request.getParameter("category"));
                                        String title = request.getParameter("title");
                                        String description = request.getParameter("description");
                                        String Keywords = request.getParameter("Keywords");



                                        java.util.Calendar newCal = Calendar.getInstance();

                                        newCal.setTime(new Date());

                                        int y = newCal.get(Calendar.YEAR);
                                        int d = newCal.get(Calendar.DATE);
                                        int m = newCal.get(Calendar.MONTH) + 1;

                                        String dtdd = y + "-" + m + "-" + d;




                                        Date date_of_post = new Date();
                                        Calendar now = Calendar.getInstance();
                                        now.setTime(new Date());
                                        String hi = title.replaceAll(" ", "_") + "_" + now.getTimeInMillis();

                                        int co = j.ClassName.check_content(description);
                                        if (co > 0) {
                                            response.sendRedirect("Single_Post_de3tails.jsp?postid=" + co);
                                        } else {
                                            if (j.ClassName.addPosts(title, description, emailid, dtdd, category, "active", hi, Keywords)) {
                                %>

                                <h3>Post Added Success !</h3>

                                <%                  } else {
                                %>
                                Check !
                                <%                  }


                                        }
                                    }


                                %>

                                <form id="contactForm" action="post.jsp">



                                    <p>
                                        <label for="company">Select Category</label>
                                        <select name="category">
                                            <option VALUE="">Select Category</option>
                                            <%
                                                ResultSet rs = j.ClassName.get_Categories_Data("");

                                                while (rs.next()) {
                                            %>

                                            <option value="<%=rs.getString(1)%>"><%=rs.getString("Cattitle")%></option>
                                            <%  }%>
                                        </select>
                                    </p>

                                    <p>

                                        <label for="email">Enter Post Title</label>
                                        <input id="email" type="text" name="title" value="" />
                                    </p>

                                    <p>
                                        <label for="profile">Enter Post Description</label>
                                        <textarea name="description" id="profile" cols="30" rows="10"></textarea>

                                    </p>
                                    <p>
                                        <label for="profile">Enter Post Keywords</label>
                                        <textarea name="Keywords" id="profile" cols="30" rows="10"></textarea>

                                    </p>

                                    <p>

                                        <button id="submit" type="submit">Submit</button>
                                    </p>

                                </form>




                            </div>

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

            <script>
   

                $( "#contactForm" ).validate({
        
                    rules:{
                        category:{
                            required: true
                        },
                        title:{
                            required: true
                        },
                        description:{
                            required: true
                        }, Keywords:{
                            required:true  
                        }
                    }
		
                
                });
            
                jQuery.validator.addMethod("alpha", function(value, element) {
                    return this.optional(element) || value == value.match(/^[a-zA-Z ]+$/);
                },"Only Characters Allowed.");     
           
            </script>