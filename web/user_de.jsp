<%-- 
    Document   : aa
    Created on : Oct 12, 2017, 1:30:58 PM
    Author     : java4
--%>
<%@page import="MysqlConnection.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
                                            <li><a href="auth_home.jsp">AA Home</a></li>
                                            <li><a href="owner_de.jsp">Owner Details</a></li>
                                            <li class="active"><a href="user_de.jsp">Receiver Details</a></li>
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
                                        
                          

                            <center>
                                <!--  start body--->
<br><br><center><h2 style="font-size: 22px; color: #008dde; font-family: cursive">Receiver Details</h2>
                    <br><table border="2" style="text-align: center; margin-left: 0px; border-color: black">
                        <tr>
                            <th style="text-align: center;width: 100px; font-size: 16px; color: black">Owner ID</th>
                            <th style="text-align: center;width: 200px; font-size: 16px; color: black">User Name</th>
                            <th style="text-align: center;width: 300px;  font-size: 16px; color: black">email</th>
                            <th style="text-align: center;width: 150px;  font-size: 16px; color: black">DOB</th>
                            <th style="text-align: center;width: 100px;  font-size: 16px; color: black">Gender</th>
                            <th style="text-align: center;width: 100px;  font-size: 16px; color: black">Status</th>
                            <th style="text-align: center;width: 100px;  font-size: 16px; color: black">Activate</th>
                        </tr>
                        <tr>
                            <%
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from reg where role='Data Receiver'");
                                    while (rs.next()) {
                            %>
                            <td style="font-size: 16px"><%=rs.getString("id")%></td>   
                            <td style="font-size: 16px"><%=rs.getString("uname")%></td>   
                            <td style="font-size: 16px"><%=rs.getString("email")%></td>  
                            <td style="font-size: 16px"><%=rs.getString("dob")%></td>  
                            <td style="font-size: 16px"><%=rs.getString("gender")%></td> 
                            <td style="font-size: 16px"><%=rs.getString("status")%></td>
                            <td><a href="user_ac.jsp?id=<%=rs.getString("id")%>"><font style="color: green; font-size: 16px">Click</a></td>
                        </tr>
                        <%


                                }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }

                        %>
                    </table>
                    <br><br><br><br><br><br><br><br><br><br>
          <!---End body---->
                            </center>


                    
                    <div class="clr"></div>
                </div>
                                        
                                        <!--- Content end---->
                                    </div>
                                </div>

                            </div>
                        </div>
                        
                    </div>
                </body>
                </html>

