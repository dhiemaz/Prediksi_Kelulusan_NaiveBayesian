/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.java.bayes.apps.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
  * @author Aries
 */
public class SQLConnection {
    private static Connection koneksi;
    
    public static Connection getkoneksi() {
        if (koneksi==null) {
            try {                
                //url="jdbc:mysql://localhost:3306/tugas_akhir";
                String url = "jdbc:mysql://localhost:3306/db_bayes";
                String user = "root";
                String password = "root";
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                koneksi=DriverManager.getConnection(url , user, password);
            }catch (SQLException t) {
                System.out.println("Error membuat koneksi");
                JOptionPane.showMessageDialog(null, "Terjadi kesalahan : " + t.getMessage(),"Pesan Error",JOptionPane.ERROR_MESSAGE);
            }
        }
        return koneksi;
    }
}


