<div class="header-wrapper">
    <header>
        <div class="container">


            <div class="logo-container">
                <!-- Website Logo -->

                <span style="color:white;font-size: 30px;">C M S</span>


            </div>


            <!-- Start of Main Navigation -->
            <nav class="main-nav">
                <div class="menu-top-menu-container">
                    <ul id="menu-top-menu" class="clearfix">
                        <%

                            if (session.getAttribute("tou") != null) {
                                String tou = session.getAttribute("tou").toString();
                                if (tou.equals("admin")) {%>
                        <li><a href="index.jsp">Admin Home</a></li>
                        <li><a href="createpackage.jsp">Packages</a></li>

                        <!--
                                                <li><a href="category.jsp">Categories</a></li>
                                                <li><a href="post.jsp">Posts</a></li>
                                                <li><a href="posts.jsp">My Posts</a></li>
                                                <li><a href="History_1.jsp"> History</a></li>-->
                        <li><a href="logout.jsp">Logout</a></li>

                        <%                        } else if (tou.equals("journalist")) {

                        %>

                        <li><a href="category.jsp">Categories</a></li>
                        <li><a href="post.jsp">Posts</a></li>
                        <li><a href="posts.jsp">My Posts</a></li>
                        <li><a href="logout.jsp">Logout</a></li>

                        <%                        } else {
                        %>



                        <li ><a href="index.jsp">User Home</a></li>
                        <li><a href="category.jsp">Categories</a></li>
                        <li><a href="post.jsp">Posts</a></li>
                        <li><a href="posts.jsp">My Posts</a></li>
                        <li><a href="History.jsp">My History</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                        <%    }
                        } else {
                        %>


                        <li ><a href="index.jsp">Home</a></li>
                        <li><a href="adminlogin.jsp">Admin Login</a></li>
                        <li><a href="Packages.jsp">User Registration</a></li>
                        <li><a href="userlogin.jsp">User Login</a></li>



                        <%                                                            }




                        %>  
                        
                    </ul>
                </div>
            </nav>
            <!-- End of Main Navigation -->

        </div>
    </header>
</div>



<div class="search-area-wrapper">
    <div class="search-area container">
        <h3 class="search-header">Search from Posts</h3>
        <p class="search-tag-line">If You Have any questions ask here</p>

        <form id="search-form" class="search-form clearfix" method="post" action="SEarch_posts.jsp" autocomplete="off">
            <input class="search-term required" type="text" id="s" name="s" placeholder="Search on focus" title="* Please enter a search term!" />
            <input class="search-btn" type="submit" value="Search" />s
            <div id="search-error-container"></div>
        </form>
    </div>
</div>