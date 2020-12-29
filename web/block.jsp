<%-- 
    Document   : block
    Created on : Oct 17, 2017, 10:43:45 AM
    Author     : java4
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="MysqlConnection.DbConnection" %>
<%
    //File Reader1

    String Path1 = "D:\\Book\\Split\\1.txt";
    BufferedReader br1 = new BufferedReader(new FileReader(Path1));
    StringBuilder sb1 = new StringBuilder();
    String line1;
    while ((line1 = br1.readLine()) != null) {
        sb1.append(line1 + "\n");
    }
    System.out.println("File 1  : \n\t" + sb1.toString());
    String str1 = sb1.toString();

    //File Reader2

    String Path2 = "D:\\Book\\Split\\2.txt";
    BufferedReader br2 = new BufferedReader(new FileReader(Path2));
    StringBuilder sb2 = new StringBuilder();
    String line2;
    while ((line2 = br2.readLine()) != null) {
        sb2.append(line2 + "\n");
    }
    System.out.println("File 2  : \n\t" + sb2.toString());
    String str2 = sb2.toString();

    //File Reader3

    String Path3 = "D:\\Book\\Split\\3.txt";
    BufferedReader br3 = new BufferedReader(new FileReader(Path3));
    StringBuilder sb3 = new StringBuilder();
    String line3;
    while ((line3 = br3.readLine()) != null) {
        sb3.append(line3 + "\n");
    }
    System.out.println("\nFile 3  : \n\t" + sb3.toString());
    String str3 = sb3.toString();



%>
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
         <%
                if (request.getParameter("msggg") != null) {
            %>
            <script>alert('This file already uploaded');</script>
            <%            }
            %>
            <%
                if (request.getParameter("msg") != null) {
            %>
            <script>alert('file uploaded successfully..');</script>
            <%            }
            %>
        <link rel="stylesheet" href="images/CSS/login.css"/>
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
                                            <li class="active"><a href="upload.jsp">File Upload</a></li>
                                            <li><a href="file_de.jsp">file Details</a></li>
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
                                         <!-- start content-top -->
                <div class="col-sm-5">
                                        <div class="form-group">
                                            <div class="form-group"><center><br></br> 
                                                <label style="color:  #c52d2f">File Block 1</label><br>
                                                    <textarea name="b1" style="width: 500px" id="message" readonly class="form-control" rows="8"><%=str1%></textarea>
                                                </center></div><br></br> 
                                          
                                        <div class="form-group"><center>
                                                <label style="color:  #c52d2f">File Block 2</label><br>
                                                <textarea name="b1" id="message" style="width: 500px" readonly class="form-control" rows="8"><%=str2%></textarea>
                                            </center></div> <br></br> 
                                          
                                        <div class="form-group"><center>
                                            <label style="color:  #c52d2f">File Block 3</label><br>
                                                <textarea name="b1" id="message" style="width: 500px" readonly class="form-control" rows="8"><%=str3%></textarea>
                                                <br></br> 
                                                <a href="upload.jsp" style="font-size: 26px; color: green">Back to File Upload</a>
                                            </center></div> <br></br> 
                                        </div>
                                        

                                       
                                    </div>
                <!-- end content-top -->
                                        <!--- Content end---->
                                    </div>
                                </div>

                            </div>
                        </div>
                        
                    </div>
                </body>
                </html>

