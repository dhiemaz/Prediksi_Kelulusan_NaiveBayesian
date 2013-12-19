package com.java.bayes.apps.form;

import com.java.bayes.apps.util.SQLConnection;

import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Cha
 */
public class Frm_prediction_process extends javax.swing.JFrame {

    private DefaultTableModel model;
    double []hitung=new double[12];
    PreparedStatement ps;
    ResultSet result = null;
    
    
    private double dataset, hsl_tepat_waktu, hsl_tdk_tepat_waktu, jenis_tepat, 
                jenis_tdk_tepat, cuti_tepat, cuti_tdk_tepat, marital_tdk_tepat,
                marital_tepat, ipk_tepat, ipk_tdk_tepat;
    
    private int count;
    
    private double prob_tepat, prob_tdk_tepat;
    
    public Frm_prediction_process() {
        initComponents();
        this.setLocationRelativeTo(rootPane);
        model = new DefaultTableModel(){
            Class[] types = new Class[]{
                java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };

            @Override
            public Class getColumnClass(int columnIndex) {
                return types[columnIndex];
            }    
        };
        
        tbl_training_proses_1.setModel(model);
        model.addColumn("No");
        model.addColumn("Jenis Kelamin");
        model.addColumn("Status Cuti Mahasiswa");
        model.addColumn("Marital Status");
        model.addColumn("IPK Semester 1 - 6");
        model.addColumn("Status Kelulusan");
        
        loadData();
        cek_data();
    }
    
    public void cek_data(){
        Connection conn = SQLConnection.getkoneksi();
        try{            
            // Proses kueri total data training dengan status_kelulusan = tepat //            
            String query = "Select count(*) as jumlah from prosessatu where status_kelulusan = 'lulus tepat waktu'";            
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_tepat.setText(Integer.toString(count));            
            
            // Proses kueri total data training dengan status_kelulusan = lulus tidak tepat waktu //            
            query = "Select count(*) as jumlah from prosessatu where status_kelulusan = 'lulus tidak tepat waktu'";
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_terlambat.setText(Integer.toString(count)); 
            
            // Proses kueri total data training dengan status_marital = menikah //            
            query = "Select count(*) as jumlah from prosessatu where marital_status = 'menikah'";            
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_menikah.setText(Integer.toString(count));            
            
            // Proses kueri total data training dengan status_marital = belum menikah //            
            query = "Select count(*) as jumlah from prosessatu where marital_status = 'belum menikah'";            
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_blm_menikah.setText(Integer.toString(count)); 
            
            // Proses kueri total data training dengan jenis kelamin = pria //            
            query = "Select count(*) as jumlah from prosessatu where jenis_kelamin = 'laki - laki'";            
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_laki_laki.setText(Integer.toString(count));            
            
            // Proses kueri total data training dengan jenis kelamin = perempuan //            
            query = "Select count(*) as jumlah from prosessatu where jenis_kelamin = 'perempuan'";            
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_perempuan.setText(Integer.toString(count)); 
            
            // Proses kueri total data training dengan status cuti = pernah cuti //            
            query = "Select count(*) as jumlah from prosessatu where status_cuti = 'pernah cuti'";            
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_cuti.setText(Integer.toString(count));            
            
            // Proses kueri total data training dengan status cuti = tidak pernah cuti //            
            query = "Select count(*) as jumlah from prosessatu where status_cuti = 'tidak pernah cuti'";            
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_tdk_cuti.setText(Integer.toString(count)); 
            
            // Proses kueri total data training dengan ipk = sangat baik //            
            query = "Select count(*) as jumlah from prosessatu where ipk = 'sangat baik'";            
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_sangat_baik.setText(Integer.toString(count));            
            
            // Proses kueri total data training dengan ipk = baik //            
            query = "Select count(*) as jumlah from prosessatu where ipk = 'baik'";            
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_baik.setText(Integer.toString(count));  
            
            // Proses kueri total data training dengan ipk = cukup //            
            query = "Select count(*) as jumlah from prosessatu where ipk = 'cukup'";            
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_cukup.setText(Integer.toString(count));  
            
            // Proses kueri total data training dengan ipk = kurang //            
            query = "Select count(*) as jumlah from prosessatu where ipk = 'kurang'";            
            ps = (PreparedStatement)conn.prepareStatement(query);
            result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
                        
            txt_kurang.setText(Integer.toString(count));  
            
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Terjadi Kesalahan : " + e.getMessage(),"Pesan Error",JOptionPane.ERROR_MESSAGE);
        }
    }
        
    public void mulai_perhitungan(){
        Connection conn = SQLConnection.getkoneksi();
        try{
            if(cmb_cuti.getSelectedIndex() == 0){
                JOptionPane.showMessageDialog(null, "Pilihan status cuti salah.. Opsi:(Pernah Cuti / Tidak Pernah Cuti)","Pesan Error",JOptionPane.ERROR_MESSAGE);
                this.HapusText();
            }else if(cmb_ipk.getSelectedIndex() == 0){
                JOptionPane.showMessageDialog(null, "Pilihan status IPK salah.. Opsi:(Kurang / Cukup / Baik / Baik Sekali)","Pesan Error",JOptionPane.ERROR_MESSAGE);
                this.HapusText();
            }else if(cmb_jk.getSelectedIndex() == 0){
                JOptionPane.showMessageDialog(null, "Pilihan jenis kelamin salah.. Opsi:(Laki-laki / Perempuan)","Pesan Error",JOptionPane.ERROR_MESSAGE);
                this.HapusText();
            }else if(cmb_marital.getSelectedIndex() ==0){
                JOptionPane.showMessageDialog(null, "Pilihan status nikah salah.. Opsi:(Menikah / Tidak Menikah)","Pesan Error",JOptionPane.ERROR_MESSAGE);
                this.HapusText();
            }else{
                // Proses kueri total data training //
                txt_hasil_proses.setText("- kalkulasi total data training..");
                String query = "select count(*) as total from prosessatu";            
                ps = (PreparedStatement)conn.prepareStatement(query);
                result = ps.executeQuery();
                while(result.next()){
                    dataset = result.getInt("total");
                }

                txt_hasil_proses.append("\n- total data training = " + dataset);

                // Proses kueri total data training dengan status_kelulusan = tepat //            
                query = "Select count(*) as jumlah from prosessatu where status_kelulusan = 'lulus tepat waktu'";
                conn = SQLConnection.getkoneksi();
                ps = (PreparedStatement)conn.prepareStatement(query);
                result = ps.executeQuery();
                while(result.next()){
                    hsl_tepat_waktu = result.getInt("jumlah");
                }

                // Proses kueri total data training dengan status_kelulusan = lulus tidak tepat waktu //            
                query = "Select count(*) as jumlah from prosessatu where status_kelulusan = 'lulus tidak tepat waktu'";
                ps = (PreparedStatement)conn.prepareStatement(query);
                result = ps.executeQuery();
                while(result.next()){
                    hsl_tdk_tepat_waktu = result.getInt("jumlah");
                }
                
                
                //---------------------------- Data Jenis Kelamin -------------------------------//
            
                // Proses kueri total data training dengan jenis kelamin dan status_kelulusan = lulus tidak tepat waktu //
                txt_hasil_proses.append("\n- kalkulasi total data dengan jenis kelamin = "+cmb_jk.getSelectedItem().toString()+" dan status kelulusan = lulus tidak tepat waktu..");
                query = "select count(*) as jenis from prosessatu where jenis_kelamin = ? AND status_kelulusan = 'lulus tidak tepat waktu'";
                ps = (PreparedStatement)conn.prepareStatement(query);
                ps.setString(1, cmb_jk.getSelectedItem().toString());
                result = ps.executeQuery();
                while(result.next()){
                    jenis_tdk_tepat = result.getInt("jenis");
                }

                txt_hasil_proses.append("\n- total data = " + jenis_tdk_tepat);
                
                // Proses kueri total data training dengan jenis kelamin dan status_kelulusan = lulus tepat waktu //
                txt_hasil_proses.append("\n- kalkulasi total data dengan jenis kelamin = "+cmb_jk.getSelectedItem().toString()+" dan status kelulusan = lulus tepat waktu..");
                query = "select count(*) as jenis from prosessatu where jenis_kelamin = ? AND status_kelulusan = 'lulus tepat waktu'";
                ps = (PreparedStatement)conn.prepareStatement(query);
                ps.setString(1, cmb_jk.getSelectedItem().toString());
                result = ps.executeQuery();
                while(result.next()){
                    jenis_tepat = result.getInt("jenis");
                }

                txt_hasil_proses.append("\n- total data = " + jenis_tepat);
                
                
                //---------------------------- Data Status Cuti Mahasiswa -------------------------------//
            
                // Proses kueri total data training dengan status cuti dan status_kelulusan = lulus tepat waktu //
                txt_hasil_proses.append("\n- kalkulasi total data dengan status cuti = "+cmb_cuti.getSelectedItem().toString()+" dan status kelulusan = lulus tepat waktu..");
                query = "SELECT Count(*) as cuti FROM prosessatu where status_cuti = ? and status_kelulusan = 'lulus tepat waktu'";
                ps = (PreparedStatement)conn.prepareStatement(query);
                ps.setString(1, cmb_cuti.getSelectedItem().toString());
                result = ps.executeQuery();
                while(result.next()){
                    cuti_tepat = result.getInt("cuti");
                }

                txt_hasil_proses.append("\n- total data = " + cuti_tepat); 
                
                // Proses kueri total data training dengan status cuti dan status_kelulusan = lulus tidak tepat waktu //                
                txt_hasil_proses.append("\n- kalkulasi total data dengan status cuti = "+cmb_cuti.getSelectedItem().toString()+" dan status kelulusan = lulus tidak tepat waktu..");
                query = "SELECT Count(*) as cuti FROM prosessatu where status_cuti = ? and status_kelulusan = 'lulus tidak tepat waktu'";
                ps = (PreparedStatement)conn.prepareStatement(query);
                ps.setString(1, cmb_cuti.getSelectedItem().toString());
                result = ps.executeQuery();
                while(result.next()){
                    cuti_tdk_tepat = result.getInt("cuti");
                }

                txt_hasil_proses.append("\n- total data = " + cuti_tdk_tepat);
                
                
                //---------------------------- Data Status Pernikahan Mahasiswa -------------------------------//
            
                // Proses kueri total data training dengan status pernikahan dan status_kelulusan = lulus tidak tepat waktu //
                txt_hasil_proses.append("\n- kalkulasi total data dengan status pernikahan = "+cmb_marital.getSelectedItem().toString()+" dan status kelulusan = lulus tidak tepat waktu..");
                query = "select count(*) as status from prosessatu where marital_status = ? AND status_kelulusan = 'lulus tidak tepat waktu'";
                ps = (PreparedStatement)conn.prepareStatement(query);
                ps.setString(1, cmb_marital.getSelectedItem().toString());
                result = ps.executeQuery();
                while(result.next()){
                    marital_tdk_tepat = result.getInt("status");
                }

                txt_hasil_proses.append("\n- total data = " + marital_tdk_tepat);
                
                
                // Proses kueri total data training dengan status pernikahan dan status_kelulusan = lulus tepat waktu //
                txt_hasil_proses.append("\n- kalkulasi total data dengan status pernikahan = "+cmb_marital.getSelectedItem().toString()+" dan status kelulusan = lulus tepat waktu..");
                query = "select count(*) as status from prosessatu where marital_status = ? AND status_kelulusan = 'lulus tepat waktu'";
                ps = (PreparedStatement)conn.prepareStatement(query);
                ps.setString(1, cmb_marital.getSelectedItem().toString());
                result = ps.executeQuery();
                while(result.next()){
                    marital_tepat = result.getInt("status");
                }

                txt_hasil_proses.append("\n- total data = " + marital_tepat); 
                
                
                //---------------------------- Data IPK 1 - 6 Mahasiswa -------------------------------//
            
                // Proses kueri total data training dengan IPK 1 - 6 dan status_kelulusan = lulus tidak tepat waktu //
                txt_hasil_proses.append("\n- kalkulasi total data dengan IPK 1 - 6 = "+cmb_ipk.getSelectedItem().toString()+" dan status kelulusan = lulus tidak tepat waktu..");
                query = "select count(*) as ipk from prosessatu where ipk = ? AND status_kelulusan = 'lulus tidak tepat waktu'";
                ps = (PreparedStatement)conn.prepareStatement(query);
                ps.setString(1, cmb_ipk.getSelectedItem().toString());
                result = ps.executeQuery();
                while(result.next()){
                    ipk_tdk_tepat = result.getInt("ipk");
                }

                txt_hasil_proses.append("\n- total data = " + ipk_tdk_tepat); 
                
                
                // Proses kueri total data training dengan IPK 1 - 6 dan status_kelulusan = lulus tepat waktu //
                txt_hasil_proses.append("\n- kalkulasi total data dengan IPK 1 - 6 = "+cmb_ipk.getSelectedItem().toString()+" dan status kelulusan = lulus tepat waktu..");
                query = "select count(*) as ipk from prosessatu where ipk = ? AND status_kelulusan = 'lulus tepat waktu'";
                ps = (PreparedStatement)conn.prepareStatement(query);
                ps.setString(1, cmb_ipk.getSelectedItem().toString());
                result = ps.executeQuery();
                while(result.next()){
                    ipk_tepat = result.getInt("ipk");
                }

                txt_hasil_proses.append("\n- total data = " + ipk_tepat);
                
                // Perhitungan Probabilitas //
                txt_hasil_proses.append("\n\n- proses perhitungan probabilitas");
                prob_tepat = Double.valueOf((jenis_tepat / hsl_tepat_waktu) * (cuti_tepat / hsl_tepat_waktu) * 
                             (marital_tepat / hsl_tepat_waktu) * (ipk_tepat / hsl_tepat_waktu) * 
                             (hsl_tepat_waktu / dataset));

                txt_hasil_proses.append("\n- probabilitas tepat = "+prob_tepat);

                prob_tdk_tepat = Double.valueOf((jenis_tdk_tepat / hsl_tdk_tepat_waktu) * (cuti_tdk_tepat / hsl_tdk_tepat_waktu) * 
                                 (marital_tdk_tepat / hsl_tdk_tepat_waktu) * (ipk_tdk_tepat / hsl_tdk_tepat_waktu) * 
                                 (hsl_tdk_tepat_waktu / dataset));

                txt_hasil_proses.append("\n- probabilitas tidak tepat = "+prob_tdk_tepat);

                if (prob_tepat > prob_tdk_tepat){
                    txt_hasil_proses.append("\n\n- Hasil untuk "+ txt_nama.getText() +" = LULUS TEPAT WAKTU");
                }else if (prob_tepat < prob_tdk_tepat){
                    txt_hasil_proses.append("\n\n- Hasil untuk "+ txt_nama.getText() +" = LULUS TIDAK TEPAT WAKTU");
                }else if(prob_tepat == prob_tdk_tepat){
                    txt_hasil_proses.append("\n\n- Hasil untuk "+ txt_nama.getText() +" = KEMUNGKINAN LULUS TEPAT WAKTU");
                }else{
                    txt_hasil_proses.append("\n\n- Hasil perhitungan kurang tepat, silahkan diulang kembali");
                }                
            }                                                                                                                                                                                                 
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Terjadi Kesalahan : " + e.getMessage(),"Pesan Error",JOptionPane.ERROR_MESSAGE);
        }
    }
        
    public void loadData() {
        model.getDataVector().removeAllElements();
        model.fireTableDataChanged();
        try {
            Connection c = SQLConnection.getkoneksi();
            Statement s = (Statement) c.createStatement();
            String sql = "Select * from prosessatu";
            ResultSet r = s.executeQuery(sql);

            while (r.next()) {
                Object[] o = new Object[6];
                o[0] = r.getString("id");
                o[1] = r.getString("jenis_kelamin");
                o[2] = r.getString("status_cuti");
                o[3] = r.getString("marital_status");
                o[4] = r.getString("ipk");
                o[5] = r.getString("status_kelulusan");

                model.addRow(o);
            }
            r.close();
            s.close();
            ShowData();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
 
    public void ShowData() {

        int i = tbl_training_proses_1.getSelectedRow();

        if (i == -1) {
            return;
        }
        String jk = (String) model.getValueAt(i, 1);
        cmb_jk.setSelectedItem(jk);
        String cuti = (String) model.getValueAt(i, 2);
        cmb_cuti.setSelectedItem(cuti);
        String marital = (String) model.getValueAt(i, 3);
        cmb_marital.setSelectedItem(marital);
        String ipk = (String) model.getValueAt(i, 4);
        cmb_ipk.setSelectedItem(ipk);

    }
 
    public void HapusText() {
        txt_hasil_proses.setText(null);
        txt_nama.setText(null);
        cmb_cuti.setSelectedIndex(0);
        cmb_ipk.setSelectedIndex(0);
        cmb_jk.setSelectedIndex(0);
        cmb_marital.setSelectedIndex(0);
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btn_keluar = new javax.swing.JButton();
        btn_reset = new javax.swing.JButton();
        btn_proses = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbl_training_proses_1 = new javax.swing.JTable();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel8 = new javax.swing.JLabel();
        txt_tepat = new javax.swing.JTextField();
        jLabel9 = new javax.swing.JLabel();
        txt_terlambat = new javax.swing.JTextField();
        txt_menikah = new javax.swing.JTextField();
        jLabel12 = new javax.swing.JLabel();
        txt_blm_menikah = new javax.swing.JTextField();
        jLabel13 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();
        txt_laki_laki = new javax.swing.JTextField();
        jLabel11 = new javax.swing.JLabel();
        txt_perempuan = new javax.swing.JTextField();
        txt_cuti = new javax.swing.JTextField();
        jLabel14 = new javax.swing.JLabel();
        txt_tdk_cuti = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        jPanel4 = new javax.swing.JPanel();
        lblsangatbaik = new javax.swing.JLabel();
        txt_sangat_baik = new javax.swing.JTextField();
        txt_baik = new javax.swing.JTextField();
        jLabel17 = new javax.swing.JLabel();
        txt_cukup = new javax.swing.JTextField();
        jLabel18 = new javax.swing.JLabel();
        txt_kurang = new javax.swing.JTextField();
        jLabel20 = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        txt_nama = new javax.swing.JTextField();
        cmb_jk = new javax.swing.JComboBox();
        jLabel3 = new javax.swing.JLabel();
        cmb_cuti = new javax.swing.JComboBox();
        cmb_marital = new javax.swing.JComboBox();
        cmb_ipk = new javax.swing.JComboBox();
        jLabel6 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jPanel6 = new javax.swing.JPanel();
        jScrollPane2 = new javax.swing.JScrollPane();
        txt_hasil_proses = new javax.swing.JTextArea();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Proses 1");

        btn_keluar.setText("Exit");
        btn_keluar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_keluarActionPerformed(evt);
            }
        });

        btn_reset.setText("Reset");
        btn_reset.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_resetActionPerformed(evt);
            }
        });

        btn_proses.setText("Proses");
        btn_proses.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_prosesActionPerformed(evt);
            }
        });

        tbl_training_proses_1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        jScrollPane1.setViewportView(tbl_training_proses_1);

        jLabel8.setText("Jumlah Tepat");

        jLabel9.setText("Jumlah Terlambat");

        jLabel12.setText("Jumlah Menikah");

        jLabel13.setText("Jumlah blm menikah");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel8)
                    .addComponent(jLabel9)
                    .addComponent(jLabel12)
                    .addComponent(jLabel13))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 21, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txt_tepat, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 55, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_terlambat, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 55, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_menikah, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 55, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_blm_menikah, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 55, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(txt_tepat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_terlambat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_menikah, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel12))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_blm_menikah, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel13))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jLabel10.setText("Jumlah Laki-laki");

        jLabel11.setText("Jumlah Perempuan");

        jLabel14.setText("Jumlah cuti");

        jLabel15.setText("Jumlah tidak cuti");

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel14, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel15, javax.swing.GroupLayout.DEFAULT_SIZE, 94, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txt_cuti, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 54, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_tdk_cuti, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 54, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel3Layout.createSequentialGroup()
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel11, javax.swing.GroupLayout.DEFAULT_SIZE, 102, Short.MAX_VALUE)
                            .addComponent(jLabel10, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 20, Short.MAX_VALUE)
                        .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txt_laki_laki, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 54, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_perempuan, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 54, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap())
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel10)
                    .addComponent(txt_laki_laki, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_perempuan, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel11))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_cuti, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel14))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_tdk_cuti, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel15))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        lblsangatbaik.setText("Jumlah sangat baik");

        jLabel17.setText("Jumlah baik");

        jLabel18.setText("Jumlah cukup");

        jLabel20.setText("Jumlah kurang");

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblsangatbaik)
                    .addComponent(jLabel17)
                    .addComponent(jLabel18)
                    .addComponent(jLabel20))
                .addGap(33, 33, 33)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txt_kurang, javax.swing.GroupLayout.DEFAULT_SIZE, 56, Short.MAX_VALUE)
                    .addComponent(txt_cukup)
                    .addComponent(txt_baik)
                    .addComponent(txt_sangat_baik))
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblsangatbaik)
                    .addComponent(txt_sangat_baik, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_baik, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel17))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_cukup, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel18))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_kurang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel20))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel4, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(14, Short.MAX_VALUE))
        );

        jPanel5.setBorder(javax.swing.BorderFactory.createTitledBorder("Data Testing"));

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel2.setText("Nama");

        cmb_jk.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "-- Pilih --", "Laki - Laki", "Perempuan" }));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel3.setText("Jenis Kelamin");

        cmb_cuti.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "-- Pilih --", "Pernah  Cuti", "Tidak Pernah Cuti" }));

        cmb_marital.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "-- Pilih --", "Belum Menikah", "Menikah" }));

        cmb_ipk.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "-- Pilih --", "Kurang", "Cukup", "Baik", "Sangat Baik" }));

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel6.setText("Status Cuti");

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel5.setText("Marital Status");

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel4.setText("IPK Semester 1 - 6");

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3)
                    .addComponent(jLabel5)
                    .addComponent(jLabel6)
                    .addComponent(jLabel4))
                .addGap(18, 18, 18)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel5Layout.createSequentialGroup()
                        .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(cmb_jk, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(cmb_cuti, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_nama, javax.swing.GroupLayout.PREFERRED_SIZE, 171, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addContainerGap(20, Short.MAX_VALUE))
                    .addGroup(jPanel5Layout.createSequentialGroup()
                        .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(cmb_marital, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(cmb_ipk, javax.swing.GroupLayout.PREFERRED_SIZE, 95, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 0, Short.MAX_VALUE))))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txt_nama, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmb_jk, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmb_cuti, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmb_marital, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmb_ipk, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel6.setBorder(javax.swing.BorderFactory.createTitledBorder("Hasil Proses"));

        txt_hasil_proses.setColumns(20);
        txt_hasil_proses.setRows(5);
        jScrollPane2.setViewportView(txt_hasil_proses);

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 332, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addComponent(jScrollPane2, javax.swing.GroupLayout.DEFAULT_SIZE, 141, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(btn_proses, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(32, 32, 32)
                        .addComponent(btn_reset, javax.swing.GroupLayout.PREFERRED_SIZE, 99, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btn_keluar, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(24, 24, 24)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1)
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel5, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 201, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel6, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_proses)
                    .addComponent(btn_reset)
                    .addComponent(btn_keluar))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_keluarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_keluarActionPerformed
        // TODO add your handling code here:
        dispose();
}//GEN-LAST:event_btn_keluarActionPerformed

    private void btn_prosesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_prosesActionPerformed
        mulai_perhitungan();
    }//GEN-LAST:event_btn_prosesActionPerformed

    private void btn_resetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_resetActionPerformed
        try{
            txt_hasil_proses.setEditable(true);
            txt_nama.setEditable(true);
            if(result != null){
                result = null;
            }
            this.HapusText();
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, "Terjadi Kesalahan : " + e.getMessage(),"Pesan Error",JOptionPane.ERROR_MESSAGE);
        }        
    }//GEN-LAST:event_btn_resetActionPerformed
    /**
     * @param args the command line arguments
     */
     public static void main(String args[]) {
              java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Frm_prediction_process().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_keluar;
    private javax.swing.JButton btn_proses;
    private javax.swing.JButton btn_reset;
    private javax.swing.JComboBox cmb_cuti;
    private javax.swing.JComboBox cmb_ipk;
    private javax.swing.JComboBox cmb_jk;
    private javax.swing.JComboBox cmb_marital;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JLabel lblsangatbaik;
    private javax.swing.JTable tbl_training_proses_1;
    private javax.swing.JTextField txt_baik;
    private javax.swing.JTextField txt_blm_menikah;
    private javax.swing.JTextField txt_cukup;
    private javax.swing.JTextField txt_cuti;
    private javax.swing.JTextArea txt_hasil_proses;
    private javax.swing.JTextField txt_kurang;
    private javax.swing.JTextField txt_laki_laki;
    private javax.swing.JTextField txt_menikah;
    private javax.swing.JTextField txt_nama;
    private javax.swing.JTextField txt_perempuan;
    private javax.swing.JTextField txt_sangat_baik;
    private javax.swing.JTextField txt_tdk_cuti;
    private javax.swing.JTextField txt_tepat;
    private javax.swing.JTextField txt_terlambat;
    // End of variables declaration//GEN-END:variables
}
