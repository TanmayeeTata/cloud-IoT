<%-- 
    Document   : download
    Created on : Oct 20, 2017, 6:40:43 PM
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
                                            
                                            <li class="last"><a href="down.jsp">Back</a></li>
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
<br><br><center><h2 style="font-size: 26px; color: deepskyblue; font-family: cursive">FILE DETAILS</h2>
                    <br><table border="2" style="text-align: center; margin-left: 0px; border-color: black">
                        <tr>
                            <th style="text-align: center;width: 200px; font-size: 16px; color: black">File ID</th>
                            <th style="text-align: center;width: 200px; font-size: 16px; color: black">File Name</th>
                            <th style="text-align: center;width: 400px;  font-size: 16px; color: black">Policy</th>
                            <th style="text-align: center;width: 300px;  font-size: 16px; color: black">Data Provider</th>
                            <th style="text-align: center;width: 400px;  font-size: 16px; color: black">Date</th>
                            <th style="text-align: center;width: 200px;  font-size: 16px; color: blue">Download</th>
                        </tr>
                        <tr>
                            <%
                                String fid = (String)session.getAttribute("sskey");
                                System.out.println("File ID : "+fid );
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = DbConnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from upload where id='"+fid+"'");
                                    if (rs.next()) {
                            %>
                            <td style="font-size: 16px"><center><%=rs.getString("id")%></center></td>   
                            <td style="font-size: 16px"><center><%=rs.getString("filename")%></center></td>   
                            <td style="font-size: 16px"><center><%=rs.getString("policy")%></center></td>  
                            <td style="font-size: 16px"><center><%=rs.getString("dataprovider")%></center></td>  
                            <td style="font-size: 16px"><center><%=rs.getString("date")%></center></td>  
                            <td><a href="Download?<%=rs.getString("id")%>"><font style="color: green; font-size: 16px"><center>Click</center></a></td>
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


