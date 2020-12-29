/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MysqlConnection;

/**
 *
 * @author java4
 */
import java.io.File;
import java.io.FileInputStream;
import org.apache.commons.net.ftp.FTPClient;

public class FTPCon {

    FTPClient client = new FTPClient();
    FileInputStream fis1 = null, fis2 = null, fis3 = null;
    boolean status;

    public boolean upload(String name) {
        try {
            client.connect("ftp.drivehq.com");
            client.login("cloud15", "cloud15");
            client.enterLocalPassiveMode();
            fis1 = new FileInputStream("D:\\Book\\Split\\1.txt");
            status = client.storeFile(" /server/" + name + "1.txt", fis1);
            
            fis2 = new FileInputStream("D:\\Book\\Split\\2.txt");
            status = client.storeFile(" /server/" + name + "2.txt", fis2);
            
            fis3 = new FileInputStream("D:\\Book\\Split\\3.txt");
            status = client.storeFile(" /server/" + name + "3.txt", fis3);
            client.logout();
            fis1.close();

        } catch (Exception e) {
            System.out.println(e);
        }
        if (status) {
            System.out.println("success");
            return true;
        } else {
            System.out.println("failed");
            return false;

        }

    }
}
