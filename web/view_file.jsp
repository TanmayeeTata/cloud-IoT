<%-- 
    Document   : view_file
    Created on : Oct 16, 2017, 4:59:06 PM
    Author     : java4
--%>

<%@page import="MysqlConnection.DbConnection"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Achieving Efficient and Secure Data</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <script type="text/javascript" src="js/radius.js"></script>
        <link rel="stylesheet" href="images/CSS/login.css">
            <style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
            <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:400,300'>
                </head>
                <body>
                    <div class="main">
                        <div class="header">
                            <div class="header_resize">
                                <div> 
                                    <h1></h1>
                                </div>
                                <div class="clr"></div>
                                <br>
                                    <center><font style="font-family: initial; color: #2cadff; font-size: 24px">Achieving Efficient and Secure Data Acquisition for Cloud-supported<br></br> Internet of Things in Smart Grid</font></center><br></br>
                                    <div class="menu_nav">

                                        <ul>
                                            <li><a href="own_home.jsp.jsp">Home</a></li>
                                            <li><a href="upload.jsp">File Upload</a></li>
                                            <li class="active"><a href="file_de.jsp">file Details</a></li>
                                            <li><a href="user_req.jsp">Receiver Req</a></li>
                                            <li class="last"><a href="index.jsp">Logout</a></li>
                                        </ul>
                                        <div class="search">
                                            <form id="form" name="form" method="post" action="#">
                                                <span>
                                                    <input name="q" type="text" class="keywords" id="textfield" maxlength="50" value="Search..." />
                                                    <input name="b" type="image" src="images/search.gif" class="button" />
                                                </span>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="clr"></div>
                                    <div class="header_img"> <img src="images/img/home1.jpg" alt="" width="960" height="326" /></div>
                            </div>
                        </div>
                        <div class="clr"></div>
                        <div class="content">
                            <div class="content_resize">
                                <div>
                                    <div class="article">
                                        <!--- Content start---->
                        

                            <div id="content">
                    <%

                        String id = request.getQueryString();
                        String fname = null;
                        System.out.println("Print Value:" + id);
                        Connection con = DbConnection.getConnection();
                        Statement st = con.createStatement();
                        ResultSet rt = st.executeQuery("select * from upload where id='" + id + "'");
                        StringBuffer sb = new StringBuffer();
                        if (rt.next()) {
                            //    String fkey=rt.getString("secret_key");
                            fname = rt.getString("filename");
                            InputStream is = rt.getAsciiStream("dfile");
                            BufferedReader br = new BufferedReader(new InputStreamReader(is));

                            String temp = null;
                            while ((temp = br.readLine()) != null) {
                                sb.append(temp);
                            }
                            System.out.println(sb);
                            String content = (sb.toString());

                    %>

                    <center><br></br><h2>Document Title: <font style="color: tomato"> <%=fname%></font></h2><br>
                        <textarea name="content" style="width: 500px;height: 200px;position: relative;left: 50px;"><%=content%></textarea></center>
                        <%
                            }
                        %>
                        <pre>
                                                                      
                        </pre>
                        </form>


                </div>
                                        
                                        <!--- Content end---->
                                    </div>
                                </div>

                            </div>
                        </div>
                        
                    </div>
                </body>
                </html>

