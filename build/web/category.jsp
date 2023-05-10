
<%@page import="java.text.SimpleDateFormat"%>
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

                <h1>Add New Category</h1>


              </div>
              <!-- <p>Please complete the fields below, ensuring you use a valid email address as you will be sent a validation code which you will need the first time you login to the site.</p> -->
              <%

                if (request.getParameter("title") != null) {
                  String caturl = request.getParameter("cateurl");
                  String Cattitle = request.getParameter("title");
                  String description = request.getParameter("description");
                  String emailid = session.getAttribute("emailid").toString();
                  String date_of_post = new Date().toString();
                  Calendar now = Calendar.getInstance();
                  now.setTime(new Date());
                  SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
                  Date date_of_creation = f.parse(now.get(Calendar.YEAR) + "-" + now.get(Calendar.MONTH) + "-" + now.get(Calendar.DATE));
                  //Date last_edit_date = f.parse(now.get(Calendar.YEAR) + "-" + now.get(Calendar.MONTH) + "-" + now.get(Calendar.DATE));

                  String who_created = session.getAttribute("emailid").toString();
                  if (j.ClassName.addCategories(
                          Cattitle, date_of_creation,
                          who_created, date_of_post,
                          caturl, date_of_creation)) {
              %>

              <h3>Category Added Success !</h3>

              <%              } else {
              %>
              Check !
              <%                  }

                }

              %>

              <form id="contactForm" method="post" action="category.jsp">





                <p>

                  <label for="email">Enter Category Title</label>
                  <input id="email" type="text" name="title" value="" />
                </p>

                <p>
                  <label for="profile">Enter Category Description</label>
                  <textarea name="description" id="profile" cols="30" rows="10"></textarea>

                </p>
                <p>

                  <label for="email">Category URL</label>
                  <input id="email" type="url" name="cateurl" value="" />
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
          title:{
            required: true
          },
          description:{
            required: true
                
                       
        
          }, cateurl:{
            required:true ,
            url : true
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