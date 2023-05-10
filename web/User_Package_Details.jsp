
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

                                    <h3>Available Packages</h3>

                                    <div>
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





                                            <center>

                                                <%
                                                    String paypal_url = "https://www.sandbox.paypal.com/cgi-bin/webscr";
                                                    String paypal_id = "test.sattvaq@inbox.com";  // sriniv_1293527277_biz@inbox.com  
                                                    ArrayList list = new ArrayList();
                                                    list = q.M.getPackagesData(0);
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
                                                            <th>Action</th>
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

                                                            <td>
                                                                <div class="btn">
                                                                    <form action="<%=paypal_url%>" method='post' name='frmPayPal1'>
                                                                        <input type='hidden' name='business' value="<%=paypal_id%>">
                                                                        <input type='hidden' name='cmd' value='_xclick'>
                                                                        <input type='hidden' name='item_number' value="<%=sp.getPackageid()%>">
                                                                        <input type='hidden' name='amount' value="<%=cost%>">
                                                                        <input type='hidden' name='no_shipping' value='1'>


                                                                        <input type='hidden' name='handling' value='0'>
                                                                        <input type='hidden' name='cancel_return' value='http://localhost:8084/CAST//cancel.jsp'>
                                                                        <input type='hidden' name='return' value='http://localhost:8080/CWS_Sri_Indu/index.jsp?st=r&duration=<%=sp.getDuration()%>&packid=<%=sp.getPackageid()%>'>
                                                                        <input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                                                                        <img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
                                                                    </form> 
                                                                </div>    

                                                            </td>

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


                                            </center>  </p>
                                    </div>

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