
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
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

                                    <h1>Sign up with us  </h1>


                                </div>
                                <!-- <p>Please complete the fields below, ensuring you use a valid email address as you will be sent a validation code which you will need the first time you login to the site.</p> -->
                                <%                  if (request.getParameter("name") != null) {
                                        String name = request.getParameter("name");
                                        String emailid = request.getParameter("emailid");
                                        String psw = request.getParameter("password");
                                        String gender = request.getParameter("gender");
                                        String phno = request.getParameter("phno");
                                        String date = request.getParameter("dob");
                                        ResultSet rs = j.ClassName.getEmailAvailable(emailid, "user");
                                        String tou = request.getParameter("tou");


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
                                        


                                        if (!rs.next()) {
                                            if (j.ClassName.addUser(name, emailid, psw, date, gender, phno, tou)) {
                      q.M.add_Org__Pack_Details(emailid, startDate, endDate, status, packId);          %>

                                <h3>User Registration Success !</h3>

                                <%                                    }
                                } else {
                                %>

                                <h3>Already Exist <%=emailid%> !</h3>

                                <%
                                        }
                                    }
                                    String days = "";
                                    int pid = Integer.parseInt(request.getParameter("packid"));
                                %>
                                <center>

                                    <%

                                        ArrayList list = new ArrayList();
                                        list = q.M.getPackagesData(pid);
                                        // out.print(list);
                                        // if (false) {
                                        if (list.size() > 0) {
                                            Iterator it = list.iterator();
                                    %>


                                    <table class="message" >
                                        <thead>
                                            <tr bgcolor="lightblue">
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
                                                    String cost;
                                                    title = sp.getName();
                                                    featuresone = sp.getNumOfCodes();
                                                    //featurestwo = sp.getNoOfStudents();

                                                    //featurestwo = sp.getNoOfTasks();
                                                    cost = sp.getCost();
                                                    days = sp.getDuration();
                                            %>

                                            <tr bgcolor="#ccc">

                                                <td><%= title%></td>



                                                <td><%=featuresone%></td>




                                                <td><%= cost%></td>


                                                <td><%= days%></td>



                                            </tr>






                                            <%
                                                }
                                            %>     </tbody></table><%
                                            } else {

                                            %>
                                    <center>
                                        <h2>
                                            <a href=""> No Packages Are Available </a>
                                        </h2>
                                    </center>



                                    <%    }

                                    %>


                                </center>  
                                <form id="contactForm" method="post" action="userreg.jsp">
                                    <input type="hidden" name="packid" value="<%=pid%>" />
                                    <input type="hidden" name="duration" value="<%=days%>" />
                                    <p>

                                        <label for="name">Enter Your Name *</label>
                                        <input id="name" type="text" name="name" value="" />
                                    </p>

                                    <p>
                                        <label for="company">Enter Email id *</label>
                                        <input id="company" type="text" name="emailid" value="" />
                                    </p>

                                    <p>

                                        <label for="email">Enter Password</label>
                                        <input  type="password" name="password" value="" />
                                    </p>



                                    <p>

                                        <label for="phone">Select Gender</label>
                                        <select name="gender"><option>Female</option><option>Male</option></select>
                                    </p>
                                    <p>

                                        <label for="phone">Phone Number</label>
                                        <input  type="text" name="phno" value="" />
                                    </p>
                                    <p>

                                        <label for="phone">Select DOB</label>
                                        <input  type="date" name="dob" value="" />
                                    </p>

                                    <input type="hidden" name="tou" value="user" />

                                    <p>

                                        <button id="submit" name="registration" value="." type="submit">Submit</button>
                                    </p>

                                </form>




                            </div>

                            <!--END #signup-inner -->
                        </div>

                    </div>
                    <!-- end of page content -->
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
            tl:{
                required: true
            },
            emailid:{
                required: true,
                email: true
                
                       
        
            }, address:{
                required:true  
            },
            name:{
                required: true,
                alpha : true
            },
            phno:{
                required: true,
                number: true,
                minlength:10,
                maxlength:10
            },
            password:{
                required: true,
                minlength:3,
                maxlength:100
            },
            dob:{
                required: true
            }
                   
        },
        messages:{
            
            email:{
                required: "Email ID is Required",
                email: "ex: xyz@domain.com"
            },
            password:{
                required: "Password is Required",
                minlength: "Atleast 3 Characters",
                maxlength: "100 Characters Only"
            }
        }
		
                
    });
            
    jQuery.validator.addMethod("alpha", function(value, element) {
        return this.optional(element) || value == value.match(/^[a-zA-Z ]+$/);
    },"Only Characters Allowed.");     
           
</script>