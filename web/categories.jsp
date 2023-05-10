

<%@page import="java.sql.ResultSet"%>
<section class="widget">
    <h3 class="title">Category of posts</h3>
    <div class="tagcloud">
        
           <form action="SEarch_posts_1.jsp" method="get">
            
            
            <table>
               
                <tbody>
                    <tr>
                        <td>Category</td>
        
                        <td><select name="post">
                                <option>Select post </option>
                                
                            
        
        
        
        
        <%
            ResultSet rs = j.ClassName.get_Categories_Data("");
String cattitle=null;
            while (rs.next()) {
                
              cattitle=rs.getString("Cattitle");  
              int cat_id=Integer.parseInt(rs.getString(1));  
                
               %>
               
               
               <option value="<%=cat_id%>"><%=cattitle%></option>
               
               
               
               <%
                
                            }  
                
                
        %>

        
        
     </select></td>
                      
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="search" /></td>
                    </tr>
                </tbody>
            </table>

            
            
            
            
            
        </form>
        
        
        
        
        
        
        
       




    </div>
</section>


