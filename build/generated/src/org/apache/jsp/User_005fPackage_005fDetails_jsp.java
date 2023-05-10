package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import java.util.ArrayList;
import java.sql.ResultSet;

public final class User_005fPackage_005fDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(2);
    _jspx_dependants.add("/inc/head.jsp");
    _jspx_dependants.add("/inc/mainmenu_beforelogin.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("        <!--[if lt IE 7]> <html class=\"lt-ie9 lt-ie8 lt-ie7\" lang=\"en-US\"> <![endif]-->\n");
      out.write("        <!--[if IE 7]>    <html class=\"lt-ie9 lt-ie8\" lang=\"en-US\"> <![endif]-->\n");
      out.write("        <!--[if IE 8]>    <html class=\"lt-ie9\" lang=\"en-US\"> <![endif]-->\n");
      out.write("        <!--[if gt IE 8]><!--> <html lang=\"en-US\"> <!--<![endif]-->\n");
      out.write("        <head>\n");
      out.write("                <!-- META TAGS -->\n");
      out.write("                <meta charset=\"UTF-8\" />\n");
      out.write("                <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\n");
      out.write("                <title>Focus</title>\n");
      out.write("\n");
      out.write("                <link rel=\"shortcut icon\" href=\"images/favicon.png\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("                <!-- Google Web Fonts-->\n");
      out.write("                <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>\n");
      out.write("                <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>\n");
      out.write("                <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>\n");
      out.write("\n");
      out.write("                <!-- Style Sheet-->\n");
      out.write("                <link rel=\"stylesheet\" href=\"style.css\"/>\n");
      out.write("                <link rel='stylesheet' id='bootstrap-css-css'  href='css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />\n");
      out.write("                <link rel='stylesheet' id='responsive-css-css'  href='css/responsive5152.css?ver=1.0' type='text/css' media='all' />\n");
      out.write("                <link rel='stylesheet' id='pretty-photo-css-css'  href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />\n");
      out.write("                <link rel='stylesheet' id='main-css-css'  href='css/main5152.css?ver=1.0' type='text/css' media='all' />\n");
      out.write("                <link rel='stylesheet' id='custom-css-css'  href='css/custom5152.html?ver=1.0' type='text/css' media='all' />\n");
      out.write("\n");
      out.write("\n");
      out.write("                <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->\n");
      out.write("                <!--[if lt IE 9]>\n");
      out.write("                <script src=\"js/html5.js\"></script>\n");
      out.write("                <![endif]-->");
      out.write("\n");
      out.write("</head>\n");
      out.write("<script src=\"./js/jquery-1.9.1.min.js\"></script>\n");
      out.write("<script src=\"./js/jquery.validate.js\"></script>\n");
      out.write("<script src=\"./js/additional-methods.js\"></script>\n");
      out.write("          \n");
      out.write("<div>\n");
      out.write("    <style>\n");
      out.write("            \n");
      out.write("      input,select { border: 1px solid black; margin-bottom: .5em;  }\n");
      out.write("      input.error { border: 1px solid red; margin-bottom: .5em; }\n");
      out.write("      select.error { border: 1px solid red; margin-bottom: .5em; }\n");
      out.write("      label.error {\n");
      out.write("        background: url('images/unchecked.gif') no-repeat;\n");
      out.write("        padding-left: 10px;\n");
      out.write("        margin-left: .3em;\n");
      out.write("      }\n");
      out.write("              \n");
      out.write("      label.valid {\n");
      out.write("        background: url('images/checked.gif') no-repeat;\n");
      out.write("        display: block;\n");
      out.write("        width: 16px;\n");
      out.write("        height: 16px;\n");
      out.write("      }\n");
      out.write("    </style>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("  <!-- Start of Header -->\n");
      out.write("  ");
      out.write("<div class=\"header-wrapper\">\n");
      out.write("    <header>\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"logo-container\">\n");
      out.write("                <!-- Website Logo -->\n");
      out.write("\n");
      out.write("                <span style=\"color:white;font-size: 30px;\">C M S</span>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!-- Start of Main Navigation -->\n");
      out.write("            <nav class=\"main-nav\">\n");
      out.write("                <div class=\"menu-top-menu-container\">\n");
      out.write("                    <ul id=\"menu-top-menu\" class=\"clearfix\">\n");
      out.write("                        ");


                            if (session.getAttribute("tou") != null) {
                                String tou = session.getAttribute("tou").toString();
                                if (tou.equals("admin")) {
      out.write("\n");
      out.write("                        <li><a href=\"index.jsp\">Admin Home</a></li>\n");
      out.write("                        <li><a href=\"createpackage.jsp\">Packages</a></li>\n");
      out.write("\n");
      out.write("                        <!--\n");
      out.write("                                                <li><a href=\"category.jsp\">Categories</a></li>\n");
      out.write("                                                <li><a href=\"post.jsp\">Posts</a></li>\n");
      out.write("                                                <li><a href=\"posts.jsp\">My Posts</a></li>\n");
      out.write("                                                <li><a href=\"History_1.jsp\"> History</a></li>-->\n");
      out.write("                        <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("\n");
      out.write("                        ");
                        } else if (tou.equals("journalist")) {

                        
      out.write("\n");
      out.write("\n");
      out.write("                        <li><a href=\"category.jsp\">Categories</a></li>\n");
      out.write("                        <li><a href=\"post.jsp\">Posts</a></li>\n");
      out.write("                        <li><a href=\"posts.jsp\">My Posts</a></li>\n");
      out.write("                        <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("\n");
      out.write("                        ");
                        } else {
                        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <li ><a href=\"index.jsp\">User Home</a></li>\n");
      out.write("                        <li><a href=\"category.jsp\">Categories</a></li>\n");
      out.write("                        <li><a href=\"post.jsp\">Posts</a></li>\n");
      out.write("                        <li><a href=\"posts.jsp\">My Posts</a></li>\n");
      out.write("                        <li><a href=\"History.jsp\">My History</a></li>\n");
      out.write("                        <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                        ");
    }
                        } else {
                        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <li ><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                        <li><a href=\"adminlogin.jsp\">Admin Login</a></li>\n");
      out.write("                        <li><a href=\"Packages.jsp\">User Registration</a></li>\n");
      out.write("                        <li><a href=\"userlogin.jsp\">User Login</a></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        ");
                                                            }




                        
      out.write("  \n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("            <!-- End of Main Navigation -->\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"search-area-wrapper\">\n");
      out.write("    <div class=\"search-area container\">\n");
      out.write("        <h3 class=\"search-header\">Search from Posts</h3>\n");
      out.write("        <p class=\"search-tag-line\">If You Have any questions ask here</p>\n");
      out.write("\n");
      out.write("        <form id=\"search-form\" class=\"search-form clearfix\" method=\"post\" action=\"SEarch_posts.jsp\" autocomplete=\"off\">\n");
      out.write("            <input class=\"search-term required\" type=\"text\" id=\"s\" name=\"s\" placeholder=\"Search on focus\" title=\"* Please enter a search term!\" />\n");
      out.write("            <input class=\"search-btn\" type=\"submit\" value=\"Search\" />s\n");
      out.write("            <div id=\"search-error-container\"></div>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("  <!-- End of Header -->\n");
      out.write("\n");
      out.write("  <!-- Start of Search Wrapper -->\n");
      out.write(" \n");
      out.write("  <!-- End of Search Wrapper -->\n");
      out.write("\n");
      out.write("  <!-- Start of Page Container -->\n");
      out.write("  <div class=\"page-container\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("\n");
      out.write("        <!-- start of page content -->\n");
      out.write("        <div class=\"span8 page-content\">\n");
      out.write("\n");
      out.write("          <link rel=\"stylesheet\" type=\"text/css\" href=\"./css/style.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("          <!--BEGIN #signup-form -->\n");
      out.write("          <div id=\"signup-form\">\n");
      out.write("\n");
      out.write("            <!--BEGIN #subscribe-inner -->\n");
      out.write("            <div id=\"signup-inner\">\n");
      out.write("\n");
      out.write("              <div class=\"clearfix\" id=\"header\">\n");
      out.write("\n");
      out.write("        <h3>Available Packages</h3>\n");
      out.write("\n");
      out.write("        <div>\n");
      out.write("            <style>\n");
      out.write("\n");
      out.write("                input,select { border: 1px solid black; margin-bottom: .5em;  }\n");
      out.write("                input.error { border: 1px solid red; margin-bottom: .5em; }\n");
      out.write("                select.error { border: 1px solid red; margin-bottom: .5em; }\n");
      out.write("                label.error {\n");
      out.write("                    background: url('images/unchecked.gif') no-repeat;\n");
      out.write("                    padding-left: 16px;\n");
      out.write("                    margin-left: .3em;\n");
      out.write("                    color:red;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("\n");
      out.write("            </style>\n");
      out.write("            <center>\n");
      out.write("\n");
      out.write("                <script src=\"./js/jquery-1.9.1.min.js\"></script>\n");
      out.write("                <script src=\"./js/jquery.validate.js\"></script>\n");
      out.write("                <script src=\"./js/additional-methods.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                <center>\n");
      out.write("\n");
      out.write("                    ");

                        String paypal_url = "https://www.sandbox.paypal.com/cgi-bin/webscr";
                        String paypal_id = "test.sattvaq@inbox.com";  // sriniv_1293527277_biz@inbox.com  
                        ArrayList list = new ArrayList();
                        list = q.M.getPackagesData(0);
                        // out.print(list);
                        // if (false) {
                        if (list.size() > 0) {
                            Iterator it = list.iterator();
                    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <table class=\"message\" >\n");
      out.write("                        <thead>\n");
      out.write("                            <tr bgcolor=\"lightblue\">\n");
      out.write("                                <th>Package Title</th>\n");
      out.write("                                <th>Number of Tasks</th>\n");
      out.write("                                   <th>Cost</th>\n");
      out.write("                                <th>Limit Days</th>\n");
      out.write("                                <th>Action</th>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            ");

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
                            
      out.write("\n");
      out.write("\n");
      out.write("                            <tr bgcolor=\"#ccc\">\n");
      out.write("\n");
      out.write("                                <td>");
      out.print( title);
      out.write("</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <td>");
      out.print(featuresone);
      out.write("</td>\n");
      out.write("                 \n");
      out.write("                                \n");
      out.write("\n");
      out.write("\n");
      out.write("                                <td>");
      out.print( cost);
      out.write("</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                <td>");
      out.print( days);
      out.write("</td>\n");
      out.write("\n");
      out.write("                                <td>\n");
      out.write("                                    <div class=\"btn\">\n");
      out.write("                                        <form action=\"");
      out.print(paypal_url);
      out.write("\" method='post' name='frmPayPal1'>\n");
      out.write("                                            <input type='hidden' name='business' value=\"");
      out.print(paypal_id);
      out.write("\">\n");
      out.write("                                            <input type='hidden' name='cmd' value='_xclick'>\n");
      out.write("                                            <input type='hidden' name='item_number' value=\"");
      out.print(sp.getPackageid());
      out.write("\">\n");
      out.write("                                            <input type='hidden' name='amount' value=\"");
      out.print(cost);
      out.write("\">\n");
      out.write("                                            <input type='hidden' name='no_shipping' value='1'>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                            <input type='hidden' name='handling' value='0'>\n");
      out.write("                                            <input type='hidden' name='cancel_return' value='http://localhost:8084/CAST//cancel.jsp'>\n");
      out.write("                                            <input type='hidden' name='return' value='http://localhost:8080/CWS_Sri_Indu/userreg.jsp?packid=");
      out.print(sp.getPackageid());
      out.write("'>\n");
      out.write("                                            <input type=\"image\" src=\"https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif\" border=\"0\" name=\"submit\" alt=\"PayPal - The safer, easier way to pay online!\">\n");
      out.write("                                            <img alt=\"\" border=\"0\" src=\"https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif\" width=\"1\" height=\"1\">\n");
      out.write("                                        </form> \n");
      out.write("                                    </div>    \n");
      out.write("\n");
      out.write("                                </td>\n");
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                            ");

                                }
                            
      out.write("     </tbody></table>");

                            } else {

                            
      out.write("\n");
      out.write("                    <center>\n");
      out.write("                        <h2>\n");
      out.write("                            <a href=\"\"> No Packages Are Available </a>\n");
      out.write("                        </h2>\n");
      out.write("                    </center>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    ");
    }

                    
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </center>  </p>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("  <!-- Basic Home Page Template -->\n");
      out.write("          <div class=\"row separator\">\n");
      out.write("        \n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- end of page content -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- start of sidebar -->\n");
      out.write("        <aside class=\"span4 page-sidebar\">\n");
      out.write("\n");
      out.write("        \n");
      out.write("\n");
      out.write("          ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "categories.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        </aside>\n");
      out.write("        <!-- end of sidebar -->\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("          \n");
      out.write("<script>\n");
      out.write("   \n");
      out.write("\n");
      out.write("      $( \"#contactForm\" ).validate({\n");
      out.write("        \n");
      out.write("        rules:{\n");
      out.write("          tl:{\n");
      out.write("            required: true\n");
      out.write("          },\n");
      out.write("          emailid:{\n");
      out.write("            required: true,\n");
      out.write("            email: true\n");
      out.write("                \n");
      out.write("                       \n");
      out.write("        \n");
      out.write("          }, address:{\n");
      out.write("            required:true  \n");
      out.write("          },\n");
      out.write("          name:{\n");
      out.write("            required: true,\n");
      out.write("            alpha : true\n");
      out.write("          },\n");
      out.write("          phno:{\n");
      out.write("            required: true,\n");
      out.write("            number: true,\n");
      out.write("            minlength:10,\n");
      out.write("            maxlength:10\n");
      out.write("          },\n");
      out.write("          password:{\n");
      out.write("            required: true,\n");
      out.write("            minlength:3,\n");
      out.write("            maxlength:100\n");
      out.write("          },\n");
      out.write("          dob:{\n");
      out.write("            required: true\n");
      out.write("          }\n");
      out.write("                   \n");
      out.write("        },\n");
      out.write("        messages:{\n");
      out.write("            \n");
      out.write("          email:{\n");
      out.write("            required: \"Email ID is Required\",\n");
      out.write("            email: \"ex: xyz@domain.com\"\n");
      out.write("          },\n");
      out.write("          password:{\n");
      out.write("            required: \"Password is Required\",\n");
      out.write("            minlength: \"Atleast 3 Characters\",\n");
      out.write("            maxlength: \"100 Characters Only\"\n");
      out.write("          }\n");
      out.write("        }\n");
      out.write("\t\t\n");
      out.write("                \n");
      out.write("      });\n");
      out.write("            \n");
      out.write("      jQuery.validator.addMethod(\"alpha\", function(value, element) {\n");
      out.write("        return this.optional(element) || value == value.match(/^[a-zA-Z ]+$/);\n");
      out.write("      },\"Only Characters Allowed.\");     \n");
      out.write("           \n");
      out.write("    </script>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
