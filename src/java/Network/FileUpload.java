/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Network;

import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import MysqlConnection.DbConnection;
import cn.edu.pku.ss.crypto.abe.api.CPABE;
import MysqlConnection.FTPCon;
import cn.edu.pku.ss.crypto.cpabe.FileSecretKey;
import java.security.SecureRandom;
import java.util.Random;

/**
 *
 * @author java4
 */
public class FileUpload extends HttpServlet {

    File file;
    final String filepath = "D:\\FileUpload/";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            MultipartRequest m = new MultipartRequest(request, filepath);
            String[] sk = m.getParameterValues("attribute");

            String policy = ",";
            for (String s : sk) {
                System.out.println(s);
                policy += s;
            }
            DateFormat dateFormat = new SimpleDateFormat("yyyy.MM.dd G 'at' HH:mm:ss ");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("current Date " + time);
            Random MKkey = new SecureRandom();
            int PASSWORD_LENGTH = 5;
            String letters = "mnbvcxzasdfghetqrwuiohkjlpov";
            String skey = "";
            for (int i = 0; i < PASSWORD_LENGTH; i++) {
                int index = (int) (MKkey.nextDouble() * letters.length());
                skey += letters.substring(index, index + 1);
            }
            HttpSession session = request.getSession(true);
            String DataProvider = (String) session.getAttribute("sname");
            String atr = (String) session.getAttribute("atrri");
            System.out.println("File Owner Name : " + DataProvider);
            String email = (String) session.getAttribute("semail");
            String skk = skey + policy;
            System.out.println("Attributes :" + policy);
            File file = m.getFile("file");
            String filename = file.getName().toLowerCase();
            String encFileName = file.getPath();
            System.out.println("File Name :" + filename);
            System.out.println("File Path :" + encFileName);

            String ciphertextFileName = encFileName;
            String PKFileName = encFileName;
            String MKFileName = encFileName;

            Connection con = DbConnection.getConnection();
            BufferedReader br = new BufferedReader(new FileReader(filepath + filename));
            StringBuffer sb = new StringBuffer();
            String temp = null;
            while ((temp = br.readLine()) != null) {
                sb.append(temp);
            }
            String str = sb.toString();
            Statement st1 = con.createStatement();

            ResultSet rs = st1.executeQuery("select * from upload where filename='" + filename + "' ");
            if (rs.next()) {
                response.sendRedirect("upload.jsp?msggg=this file already uploaded");
            } else {
                System.out.println("Plin Text :" + str);
                CPABE e = new CPABE();
                String enc = e.encFile(sb.toString(), atr);
                System.out.println("Cipher Text :" + enc);
                FileSecretKey encsk = new FileSecretKey();
                String PrivateSsecretkey = encsk.encrypt(skk.toString());
                System.out.println("Secrect Key :" + PrivateSsecretkey);
//                e.setup(PKFileName, MKFileName);
//                e.enc(encFileName, policy, ciphertextFileName, PKFileName);

                System.out.println("Successfully..!!!.....................................!!!");

                FileWriter fw = new FileWriter("D:\\Book\\" + "test.txt");
                fw.write(enc);
                fw.close();
                String Path = "D:\\Book\\test.txt";
                SplitFile sp = new SplitFile();
                sp.Split(Path);
                String s = enc.toString();
                
                byte[] bytes = s.getBytes();
                StringBuilder binary = new StringBuilder();
                for (byte b : bytes) {
                    int val = b;
                    for (int i = 0; i < 8; i++) {
                        binary.append((val & 128) == 0 ? 0 : 1);
                        val <<= 1;
                    }
                    binary.append(' ');
                }
                String Bin = binary.toString();
                System.out.println("Encrypted String Convert to Binary : " + Bin);

                boolean status = new FTPCon().upload(filename);
                if (status) {

                    Statement st = con.createStatement();
                    int i = st.executeUpdate("insert into upload(filename, content, policy, dataprovider, email, date, dfile, skey)values('" + file.getName() + "' ,'" + Bin + "' , '" + policy + "' ,'" + DataProvider + "' ,'" + email + "' ,'" + time + "','" + sb.toString() + "' ,'" + PrivateSsecretkey + "')");
                    System.out.println(i);
                    if (i != 0) {

                        response.sendRedirect("block.jsp?msg='Success'");

                    } else {
                        response.sendRedirect("upload.jsp?msgg='Failed'");
                    }
                } else {
                    out.println("Error in FTP Connection");
                }
            }
        } catch (Exception e) {
            out.println(e);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
