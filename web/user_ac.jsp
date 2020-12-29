<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MysqlConnection.DbConnection"%>
<%
   
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    
    String id = request.getParameter("id");
    System.out.println("Print Valus :" + id);
    String accept = "Authorized";

    int i = st.executeUpdate("update reg set status = '" + accept + "' where id = '" + id + "'");
    if (i != 0) {
        response.sendRedirect("user_de.jsp?msg=success");
    } else {
        response.sendRedirect("user_de.jsp?msgg=Error");
    }
%>
