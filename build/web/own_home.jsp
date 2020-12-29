<%-- 
    Document   : own_home
    Created on : Oct 16, 2017, 3:10:31 PM
    Author     : java4
--%>

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
            <% session.setAttribute("atrri", "Blowfish"); %>
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
                                            <li class="active"><a href="own_home.jsp.jsp">Home</a></li>
                                            <li><a href="upload.jsp">File Upload</a></li>
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
                                        <center>  <br>  
                                                <font style="font-family: initial; font-size: 22px; color: #008dde">Owner Home</font><br></br>
                                        <img src="images/owner.jpg"  width="800" height="350" />
                                        </center>
                                        
                                        <!--- Content end---->
                                    </div>
                                </div>

                            </div>
                        </div>
                        
                    </div>
                </body>
                </html>

