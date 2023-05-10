
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
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

                                <h1>Sign in as user </h1>


                            </div>
                            <!-- <p>Please complete the fields below, ensuring you use a valid email address as you will be sent a validation code which you will need the first time you login to the site.</p> -->


                            <%

                                if (request.getParameter("emailid") != null) {

                                    String emailid = request.getParameter("emailid");

                                    String password = request.getParameter("password");
                                    String tou = request.getParameter("tou");

                                    ResultSet rs = j.ClassName.getPasswordAvailable(emailid, password, tou);

                                    if (rs.next()) {
                                        java.util.Calendar newCal = Calendar.getInstance();

                                        newCal.setTime(new Date());

                                        int y = newCal.get(Calendar.YEAR);
                                        int d = newCal.get(Calendar.DATE);
                                        int m = newCal.get(Calendar.MONTH) + 1;

                                        String dtdd = y + "-" + m + "-" + d;
                                        if (tou.equals("user")) {
                                            String sr = "login";
                                            //j.ClassName.add_History(0, dtdd, emailid, sr);
                                        }
                                        String nms = "";
                                        if (tou.equals("user")) {
                                            nms = "User";
                                        } else {
                                            nms = "Journalist";
                                        }




                                        session.setAttribute("tou", tou);
                                        session.setAttribute("emailid", emailid);
                                        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                                        request.setAttribute("msg", nms + " Logged in Success !");
                                        rd.forward(request, response);

                                    } else {
                                        out.print("User id or Pssword is Wrong !");
                                    }

                                }

                            %>
                            <form id="contactForm" method="post" action="userlogin.jsp">



                                <p>
                                    <label for="company">Enter Email id *</label>
                                    <input id="company" type="email" name="emailid" value="" />
                                </p>

                                <p>

                                    <label for="email">Enter Password</label>
                                    <input id="email" type="password" name="password" value="" />
                                </p>
                                <input type="hidden" name="tou" value="user" />


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