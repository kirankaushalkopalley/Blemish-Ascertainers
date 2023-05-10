<%



    int id = Integer.parseInt(request.getParameter("id"));


    boolean f = j.ClassName.deletePost(id);


    if (f) {
        RequestDispatcher rd = request.getRequestDispatcher("posts.jsp");
        request.setAttribute("msg", "Post Deleted !");
        rd.forward(request, response);
    } else {
        RequestDispatcher rd = request.getRequestDispatcher("posts.jsp");
        request.setAttribute("msg", "Post Not Deleted !");
        rd.forward(request, response);
    }








%>
