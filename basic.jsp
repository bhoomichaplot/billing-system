<%@ page import="java.sql.*" %>
<%Class.forName("oracle.jdbc.driver.OracleDriver");   %>

<HTML>
    <HEAD>
        <TITLE>Fetching Data From a Database</TITLE>
    </HEAD>

    <BODY>
        <H1>Fetching Data From a Database</H1>

        <% 
        Connection connection = DriverManager.getConnection(
        		"jdbc:oracle:thin:@localhost:1521:orcl","bhoomi","bhoomi");

            Statement statement = connection.createStatement();

            String id = request.getParameter("id");  
            String password = request.getParameter("password"); 
            ResultSet resultset = 
                statement.executeQuery("select * from user1 where id = '" + id + "' and password = '" + password + "'"); 

                  

            if(!resultset.next()) {
                out.println("Sorry, could not find username. ");
            } else {
            	response.sendRedirect("main.jsp");
            	}
          connection.close();
        %>         
           </BODY>
</HTML>