<%@page import="java.util.UUID"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="MysqlConnection.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String username = request.getParameter("username");
    String pass = request.getParameter("password");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String attribute = request.getParameter("attribute");
    String phone = request.getParameter("phone");
    String pkey = request.getParameter("pkey");
    String mkey = request.getParameter("mkey");
    System.out.println("User Details" + name + email + username + pass + dob + gender + attribute + phone);
    int status = Integer.parseInt(request.getParameter("status"));

    String statuss = null;
    String str = "";
    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                    rs = st.executeQuery("select * from reg where uname='" + name + "' AND pass='" + pass + "' AND status='No'");
                    if (rs.next()) {
                        statuss = rs.getString("status");
                        session.setAttribute("sname", rs.getString("uname"));
                        session.setAttribute("semail", rs.getString("email"));
                        str = "";

                        response.sendRedirect("own_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("owner.jsp?notac=You_are_not_Activated");
                    }

                    response.sendRedirect("owner.jsp?mssgg=failed");
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 2:
                try {
                    System.out.println("User Login : " + name + "Password : " + pass);
                    rs = st.executeQuery("select * from reg where uname='" + name + "' AND pass='" + pass + "'");
                    if (rs.next()) {
                        statuss = rs.getString("status");
                        session.setAttribute("sname", rs.getString("uname"));
                        session.setAttribute("smail", rs.getString("email"));
                        session.setAttribute("sattribute", rs.getString("attribute"));
                        session.setAttribute("suid", rs.getString("id"));
                        if (statuss.equalsIgnoreCase("Authorized")) {

                            response.sendRedirect("user_home.jsp?msg=success");
                        } else {
                            response.sendRedirect("user.jsp?notac=You_are_not_Authorized_User");
                        }
                    }
                    response.sendRedirect("user.jsp?mssgg=failed");
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 3:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into reg (name, email, uname, pass, dob, gender, attribute, phone, role, status) values ('" + name + "' ,'" + email + "' ,'" + username + "' ,'" + pass + "', '" + dob + "', '" + gender + "', '" + attribute + "', '" + phone + "', 'Data Receiver', 'No')");
                    if (i != 0) {

                        response.sendRedirect("user.jsp?msg=success");
                    } else {
                        response.sendRedirect("reg.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 4:

                try {
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into reg (name, email, uname, pass, dob, gender, attribute, phone, role, status) values ('" + name + "' ,'" + email + "' ,'" + username + "' ,'" + pass + "', '" + dob + "', '" + gender + "', 'No', '" + phone + "', 'Data Owner', 'No')");
                    if (i != 0) {
                        response.sendRedirect("owner.jsp?msg=success");
                    } else {
                        response.sendRedirect("oreg.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 5:

                try {
                    if (name.equalsIgnoreCase("aa") && pass.equalsIgnoreCase("aa")) {

                        response.sendRedirect("auth_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("aa.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 6:

                try {
                    if (name.equalsIgnoreCase("cloud") && pass.equalsIgnoreCase("cloud")) {

                        response.sendRedirect("cloud_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("cloud.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 7:
                try {
                    System.out.println("-------------------------------->>>>>>>Public Key : " + pkey + "\nMaster Key : " + mkey);
//                    String re1 = pkey.replace(" ", "+");
//                    String re2 = mkey.replace("+", " ");
//                    System.out.println("-Replace Skeys :------------------------------->>>>>>>Public Key : " + pkey + "\nMaster Key : " + mkey);
                    rs = st.executeQuery("select * from request where akey='" + pkey + "' AND skey='" + mkey + "'");
                    if (rs.next()) {
                        session.setAttribute("sskey", rs.getString("fid"));
                        response.sendRedirect("download.jsp?msg=success");
                    } else {
                        response.sendRedirect("down.jsp?msgg=Secret key not matched");
                    }

                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>
