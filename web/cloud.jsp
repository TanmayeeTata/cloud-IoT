<%-- 
    Document   : cloud
    Created on : Oct 12, 2017, 1:33:15 PM
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
                                            <li><a href="index.jsp">Home</a></li>
                                            <li><a href="owner.jsp">Data Owner</a></li>
                                            <li><a href="user.jsp">Data Receiver</a></li>
                                            <li><a href="aa.jsp">AA</a></li>
                                            <li class="active" ><a href="cloud.jsp">Cloud Server</a></li><br></br>
                                            <li class="last"><a href="graph.jsp">Graph</a></li>
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
                                <div class="mainbar">
                                    <div class="article">


                                        <div id="login">
                                            <font style="color: #0064ab; font-family: fantasy;font-size: 18px">Cloud Server Login Here!!</font><br></br>
                                            <form action="action.jsp" method="get" >
                                                <fieldset>
                                                    <p><input type="text" required name="name" placeholder="Cloud ID" /></p>
                                                    <p><input type="password" required name="password" placeholder="Password" /><input type="hidden" required name="status" value="6" /></p>
                                                    <p><input type="submit" value="Login"/></p>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                                <div class="sidebar">
                                    <div class="gadget">
                                        <h2 class="star" >Sidebar Menu</h2>
                                        <div class="clr"></div>
                                        <ul class="sb_menu">
                                            <li><a href="index.jsp">Home</a></li>
                                            <li><a href="owner.jsp">Data Owner</a></li>
                                            <li><a href="user.jsp">Data Receiver</a></li>
                                            <li><a href="aa.jsp">Attribute Authority</a></li>
                                            <li><a href="cloud.jsp">Cloud Server</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="clr"></div>
                            </div>
                        </div>
                        <div class="fbg">

                            
                        </div>
                    </div>
                </body>
                </html>


