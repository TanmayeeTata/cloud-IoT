<%-- 
    Document   : index
    Created on : Oct 12, 2017, 11:56:04 AM
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
<link rel='stylesheet prefetch' href='css/78bb26fcc11e72f5aa24162c1.css'>
<link rel="stylesheet" href="css/style.css">
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
      <center><font style="font-family: initial; color: #2cadff; font-size: 24px"> Securing Data during Acquisition for Cloud-supported<br></br> Internet of Things</font></center><br></br>
      <div class="menu_nav">
          
        <ul>
          <li class="active"><a href="index.jsp">Home</a></li>
          <li><a href="owner.jsp">Data Owner</a></li>
          <li><a href="user.jsp">Data Receiver</a></li>
          <li><a href="aa.jsp">AA</a></li>
          <li><a href="cloud.jsp">Cloud Server</a></li><br></br>
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
          <div class="clr"></div>
          <label style="color: black; font-family: monospace;font-size: 20px">ABSTRACT</label>
          <p align="justify" style="color: #595959;  font-size: 16px">Cloud-supported Internet of Things (Cloud-IoT) has been broadly deployed in smart grid systems. The IoT front-ends are responsible for data acquisition and status supervision, while the substantial amount of data is stored and managed in the cloud server. Achieving data security and system efficiency in the data acquisition and transmission process are of great significance and challenging, because the power grid-related data is sensitive and in huge amount. In this paper, we present an efficient and secure data acquisition scheme based on CP-ABE (Ciphertext Policy Attribute Based Encryption). Data acquired from the terminals will be partitioned into blocks and encrypted with its corresponding access sub-tree in sequence, thereby the data encryption and data transmission can be processed in parallel. Furthermore, we protect the information about the access tree with threshold secret sharing method, which can preserve the data privacy and integrity from users with the unauthorized sets of attributes. The formal analysis demonstrates that the proposed scheme can fulfill the security requirements of the Cloud-supported IoT in smart grid. The numerical analysis and experimental results indicate that our scheme can effectively reduce the time cost compared with other popular approaches.</p>
          
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
