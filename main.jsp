<%@ page import="java.sql.*" %>
<%Class.forName("oracle.jdbc.driver.OracleDriver");   %>


<HTML>
    <HEAD>
        <TITLE>Company Database</TITLE>
    </HEAD>

    <BODY>
     
        <H1>Billing Database Table</H1>

               <% 
					Connection connection = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:orcl","bhoomi","bhoomi");
			Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery(" select * from cust_ledger where billing_month='01-Apr-19'or payment_date='18-may-19'and k_no= 19387") ; 
        %>

      

        <TABLE BORDER="1">
            <TR>
                <TH>K_no</TH>
                <TH>Billing Date</TH>
                <TH>Billing Month</TH>
                <TH>Amount</TH>
                <TH>Due Date</TH>
                <TH>Amount after due date</TH>
                <TH>Payment Date</TH>
                <TH>Amount Credited</TH>
                
            </TR>
            <% while(resultset.next()){ %>
                <TR>
                    <TD> 
                        <%= resultset.getString(1)%>
                    </TD>
                    <TD> 
                        <%= resultset.getString(2)%>
                    </TD>
                     <TD> 
                        <%= resultset.getString(3)%>
                    </TD>
                    <TD> 
                        <%= resultset.getString(4)%>
                    </TD>
                      <TD> 
                        <%= resultset.getString(5)%>
                    </TD>
                    <TD> 
                        <%= resultset.getString(6)%>
                    </TD>
                     <TD> 
                        <%= resultset.getString(7)%>
                    </TD>
                    <TD> 
                        <%= resultset.getString(8)%>
                    </TD>
                    
                    
           		
                    
           		</TR>
                       
                   
            <% } %>
        </TABLE>
        </FORM>
    </BODY>
</HTML>