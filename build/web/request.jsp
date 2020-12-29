<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import="cn.edu.pku.ss.crypto.cpabe.RSACipher" %>
<%@ page import="MysqlConnection.DbConnection"%>
<%
    try {

        String uid = (String) session.getAttribute("suid");
        String uname = (String) session.getAttribute("sname");
        String email = (String) session.getAttribute("smail");
        String sattribute = (String) session.getAttribute("sattribute");

        String att = uid + uname;
        RSACipher rsa = new RSACipher();
        String akey = rsa.encrypt(att);

        String fid = request.getParameter("id");
        String fname = request.getParameter("filename");
        String skey = request.getParameter("skey");

        String Status = "Waiting";
        System.out.println("Request is activated" + uid + uname + email + sattribute + fid + fname + skey + Status);
        Connection con = DbConnection.getConnection();
        Statement st = con.createStatement();

        String sql = "insert into request(uid, uname, email, attribute, akey, fid, fname, skey, status) values ('" + uid + "','" + uname + "','" + email + "','" + sattribute + "','" + akey + "','" + fid + "','" + fname + "', '" + skey + "', '" + Status + "')";
        int x = st.executeUpdate(sql);
        if (x != 0) {
            response.sendRedirect("file_de1.jsp?msg=Request_send_Successfully");

        } else {
            response.sendRedirect("file_de1.jsp?msgg=faild");

        }
        con.close();
        st.close();
    } catch (Exception e) {
        out.println(e);

    }
%>   