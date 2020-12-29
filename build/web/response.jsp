<%-- 
    Document   : response
    Created on : Oct 20, 2017, 5:22:01 PM
    Author     : java4
--%>

<%@page import="MysqlConnection.Mail"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@ page import ="java.sql.*" %>
<%
    {
        String url = "jdbc:mysql://localhost:3306/smart_grid";
        String user = "root";
        String password = "root";
        String id = request.getQueryString();
        session.setAttribute("sid", id);
        System.out.println("id get successfully" + id);
        Connection conn = DriverManager.getConnection(url, user, password);

        String sql = "Select *  from request where id = '" + id + "' ";
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet result = statement.executeQuery();
        if (result.next()) {

            String name = result.getString("uname");
            String email = result.getString("email");
            session.setAttribute("Email", email);
            String fname = result.getString("fname");
            String akey = result.getString("akey");
            String skey = result.getString("skey");
            String msg = "FILE ACCESS "+"\n\n\tFile Name : " + fname + "\n\n\tPublic Key : " + akey + "\n\n\tMaster Key : " + skey;
            System.out.println("Message : " + msg);
            Mail m = new Mail();
            m.secretMail(msg, name, email);

            response.sendRedirect("update.jsp");
        } else {
            response.sendRedirect("file_req.jsp");
        }
    }
%>


