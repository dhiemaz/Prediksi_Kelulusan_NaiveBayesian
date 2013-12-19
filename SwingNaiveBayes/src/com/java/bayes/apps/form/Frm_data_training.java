package com.java.bayes.apps.form;

import com.java.bayes.apps.util.SQLConnection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author Cha
 */
public class Frm_data_training extends javax.swing.JFrame {
private DefaultTableModel model;
    
    /** Creates new form DataTrainingProses1 */
    public Frm_data_training() {
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
        tbltrainingproses1.setModel(model);
        model.addColumn("No");
        model.addColumn("Jenis Kelamin");
        model.addColumn("Status Cuti Mahasiswa");
        model.addColumn("Marital Status");
        model.addColumn("IPK Semester 1 - 6");
        model.addColumn("Status Kelulusan");

        loadData();
    }
    
    private void loadData() {
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
            JOptionPane.showMessageDialog(null, "Terjadi kesalahan : " + e.getMessage(),"Pesan Error",JOptionPane.ERROR_MESSAGE);
        }
    }
    
    private void TambahData() {
        String id = (String) this.txt_id.getText();
        String jk = (String) this.cmb_jk.getSelectedItem();
        String cuti = (String) this.cmb_cuti.getSelectedItem();
        String marital = (String) this.cmb_marital.getSelectedItem();
        String ipk = (String) this.cmb_ipk.getSelectedItem();
        String kelulusan = (String) this.cmb_lulus.getSelectedItem();

        try {
            Connection c = SQLConnection.getkoneksi();
            String sql = "Insert into prosessatu values (?,?,?,?,?,?)";
            PreparedStatement p = (PreparedStatement) c.prepareStatement(sql);
            p.setString(1, id);
            p.setString(2, jk);
            p.setString(3, cuti);
            p.setString(4, marital);
            p.setString(5, ipk);
            p.setString(6, kelulusan);
            p.executeUpdate();
            p.close();
            JOptionPane.showMessageDialog(this, "Sukses Tambah data");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, "Data gagal disimpan karena terjadi redundansi data : " + e.getMessage(), "ERROR", JOptionPane.ERROR_MESSAGE);
        } catch(NullPointerException npe){
            JOptionPane.showMessageDialog(this, "Lengkapi data yang kosong", "ERROR", JOptionPane.ERROR_MESSAGE);
        }finally {
            HapusText();
            loadData();
        }
    }
    
    private void UpdateData() {
        int i = tbltrainingproses1.getSelectedRow();
        if (i == -1) {
            return;
        }
        String id = (String) model.getValueAt(i, 0);
        try {
            Connection c = SQLConnection.getkoneksi();
            String sql = "UPDATE prosessatu Set jenis_kelamin='" + this.cmb_jk.getSelectedItem() + "',status_cuti='" + this.cmb_cuti.getSelectedItem()
                    + "',marital_status='" + this.cmb_marital.getSelectedItem() + "',ipk='" + this.cmb_ipk.getSelectedItem()
                    + "',status_kelulusan='" + this.cmb_lulus.getSelectedItem() + "' WHERE id='" + id + "'";
            PreparedStatement p = (PreparedStatement) c.prepareStatement(sql);

            p.executeUpdate();
            p.close();
        } catch (SQLException e) {
            System.out.println("Terjadi kesalahan");
            JOptionPane.showMessageDialog(null, "Terjadi kesalahan : " + e.getMessage(),"Pesan Error",JOptionPane.ERROR_MESSAGE);
        } finally {
            loadData();
            JOptionPane.showMessageDialog(this, "Sukses Edit data");
        }
    }

    private void DeleteData() {
        int i = tbltrainingproses1.getSelectedRow();
        if (i == -1) {
            return;
        }
        String id = (String) model.getValueAt(i, 0);

        try {
            Connection c = SQLConnection.getkoneksi();
            String sql = "DELETE From prosessatu  WHERE id='" + id + "'";
            PreparedStatement p = (PreparedStatement) c.prepareStatement(sql);
            p.executeUpdate();
            p.close();
            JOptionPane.showMessageDialog(this, "Apakah Anda Akan Menghapus Data ?");
            JOptionPane.showMessageDialog(this, "Sukses Hapus data");
        } catch (SQLException e) {
            System.out.println("Terjadi kesalahan");
            JOptionPane.showMessageDialog(null, "Terjadi kesalahan : " + e.getMessage(),"Pesan Error",JOptionPane.ERROR_MESSAGE);
        } finally {
            loadData();
        }
    }
    
    private void ShowData() {
        int i = tbltrainingproses1.getSelectedRow();

        if (i == -1) {
            return;
        }

        String id = (String) model.getValueAt(i, 0);
        txt_id.setText(id);
        String jk = (String) model.getValueAt(i, 1);
        cmb_jk.setSelectedItem(jk);
        String cuti = (String) model.getValueAt(i, 2);
        cmb_cuti.setSelectedItem(cuti);
        String marital = (String) model.getValueAt(i, 3);
        cmb_marital.setSelectedItem(marital);
        String ipk = (String) model.getValueAt(i, 4);
        cmb_ipk.setSelectedItem(ipk);
        String kelulusan = (String) model.getValueAt(i, 5);
        cmb_lulus.setSelectedItem(kelulusan);
    }
    
    private void HapusText() {
        txt_id.setText(null);
        cmb_cuti.setSelectedIndex(0);
        cmb_ipk.setSelectedIndex(0);
        cmb_jk.setSelectedIndex(0);
        cmb_lulus.setSelectedIndex(0);
        cmb_marital.setSelectedIndex(0);
    }
    
    private boolean cekData(String id){
        Connection conn = SQLConnection.getkoneksi();
        int count = 0;
        boolean ada = true;
        try{
            // Proses pengecekan apakah id sudah ada sebelumnya didatabase //            
            String query = "Select count(*) as jumlah from prosessatu where id = ?";            
            PreparedStatement ps = (PreparedStatement)conn.prepareStatement(query);
            ps.setString(1, id);
            ResultSet result = ps.executeQuery();
            while(result.next()){
                count = result.getInt("jumlah");
            }
            
            if(count < 1){
                ada = false;
            }
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Terjadi kesalahan : " + e.getMessage(),"Pesan Error",JOptionPane.ERROR_MESSAGE);
        }
        
        return ada;
    }
    

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btn_delete = new javax.swing.JButton();
        btn_insert = new javax.swing.JButton();
        btn_update = new javax.swing.JButton();
        btn_exit = new javax.swing.JButton();
        btn_new = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txt_id = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        cmb_jk = new javax.swing.JComboBox();
        cmb_cuti = new javax.swing.JComboBox();
        jLabel3 = new javax.swing.JLabel();
        cmb_marital = new javax.swing.JComboBox();
        jLabel4 = new javax.swing.JLabel();
        cmb_ipk = new javax.swing.JComboBox();
        jLabel5 = new javax.swing.JLabel();
        cmb_lulus = new javax.swing.JComboBox();
        jLabel6 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbltrainingproses1 = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Entry Data Training 1");

        btn_delete.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/keluar.png"))); // NOI18N
        btn_delete.setText("Delete");
        btn_delete.setEnabled(false);
        btn_delete.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_deleteActionPerformed(evt);
            }
        });

        btn_insert.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/insert.png"))); // NOI18N
        btn_insert.setText("Insert");
        btn_insert.setEnabled(false);
        btn_insert.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_insertActionPerformed(evt);
            }
        });

        btn_update.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/update.png"))); // NOI18N
        btn_update.setText("Update");
        btn_update.setEnabled(false);
        btn_update.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_updateActionPerformed(evt);
            }
        });

        btn_exit.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/keluar.png"))); // NOI18N
        btn_exit.setText("Exit");
        btn_exit.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_exitActionPerformed(evt);
            }
        });

        btn_new.setIcon(new javax.swing.ImageIcon(getClass().getResource("/image/logout.png"))); // NOI18N
        btn_new.setText("New");
        btn_new.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_newActionPerformed(evt);
            }
        });

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Input Data"));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel1.setText("ID");

        jLabel2.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel2.setText("Jenis Kelamin");

        cmb_jk.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "-- Pilih --", "Laki - Laki", "Perempuan" }));

        cmb_cuti.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "-- Pilih --", "Pernah  Cuti", "Tidak Pernah Cuti" }));

        jLabel3.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel3.setText("Status Cuti");

        cmb_marital.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "-- Pilih --", "Menikah", "Belum Menikah" }));

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel4.setText("Marital Status");

        cmb_ipk.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "-- Pilih --", "Sangat Baik", "Baik", "Cukup", "Kurang" }));

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel5.setText("IPK Semester 1 - 6");

        cmb_lulus.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "-- Pilih --", "Lulus Tepat Waktu", "Lulus Tidak Tepat Waktu" }));

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel6.setText("Status Kelulusan");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jLabel5))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel1)
                            .addComponent(jLabel2)
                            .addComponent(jLabel3)
                            .addComponent(jLabel4)
                            .addComponent(jLabel6))
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(cmb_lulus, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cmb_ipk, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cmb_marital, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cmb_cuti, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_id, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cmb_jk, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(13, 13, 13))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txt_id, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmb_jk, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmb_cuti, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmb_marital, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel4))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel5)
                    .addComponent(cmb_ipk, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cmb_lulus, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("Data Training"));

        tbltrainingproses1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        tbltrainingproses1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbltrainingproses1MouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tbltrainingproses1);

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(btn_insert)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btn_update)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btn_delete)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btn_new, javax.swing.GroupLayout.PREFERRED_SIZE, 83, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btn_exit, javax.swing.GroupLayout.PREFERRED_SIZE, 81, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 12, Short.MAX_VALUE))
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(13, 13, 13)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 20, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btn_insert)
                    .addComponent(btn_update)
                    .addComponent(btn_delete)
                    .addComponent(btn_new, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btn_exit))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btn_deleteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_deleteActionPerformed
        this.DeleteData();
}//GEN-LAST:event_btn_deleteActionPerformed

    private void btn_insertActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_insertActionPerformed
                
        if(txt_id.getText() == null){
            JOptionPane.showMessageDialog(null, "Data ID salah atau inputan kosong.. Silahkan isi terlebih dahulu","Pesan Error",JOptionPane.ERROR_MESSAGE);            
        }else if(cmb_cuti.getSelectedIndex() == 0){
            JOptionPane.showMessageDialog(null, "Pilihan status cuti salah.. Opsi:(Pernah Cuti / Tidak Pernah Cuti)","Pesan Error",JOptionPane.ERROR_MESSAGE);            
        }else if(cmb_ipk.getSelectedIndex() == 0){
            JOptionPane.showMessageDialog(null, "Pilihan status IPK salah.. Opsi:(Kurang / Cukup / Baik / Baik Sekali)","Pesan Error",JOptionPane.ERROR_MESSAGE);
        }else if(cmb_jk.getSelectedIndex() == 0){
            JOptionPane.showMessageDialog(null, "Pilihan jenis kelamin salah.. Opsi:(Laki-laki / Perempuan)","Pesan Error",JOptionPane.ERROR_MESSAGE);
        }else if(cmb_lulus.getSelectedIndex() == 0){
            JOptionPane.showMessageDialog(null, "Pilihan lulus salah.. Opsi:(Lulus Tepat Waktu / Lulus Tidak Tepat Waktu)","Pesan Error",JOptionPane.ERROR_MESSAGE);
        }else if(cmb_marital.getSelectedIndex() == 0){
            JOptionPane.showMessageDialog(null, "Pilihan status nikah salah.. Opsi:(Menikah / Tidak Menikah)","Pesan Error",JOptionPane.ERROR_MESSAGE);
        }else{
            boolean ada = cekData(txt_id.getText());
            if(!ada){
                this.TambahData();
            }else{
                JOptionPane.showMessageDialog(null, "Data sudah ada didalam database","Pesan Error",JOptionPane.ERROR_MESSAGE);
                HapusText();
            }            
        }        
}//GEN-LAST:event_btn_insertActionPerformed

    private void btn_updateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_updateActionPerformed
        
        if(cmb_cuti.getSelectedIndex() == 0){
            JOptionPane.showMessageDialog(null, "Pilihan status cuti salah.. Opsi:(Pernah Cuti / Tidak Pernah Cuti)","Pesan Error",JOptionPane.ERROR_MESSAGE);            
        }else if(cmb_ipk.getSelectedIndex() == 0){
            JOptionPane.showMessageDialog(null, "Pilihan status IPK salah.. Opsi:(Kurang / Cukup / Baik / Baik Sekali)","Pesan Error",JOptionPane.ERROR_MESSAGE);
        }else if(cmb_jk.getSelectedIndex() == 0){
            JOptionPane.showMessageDialog(null, "Pilihan jenis kelamin salah.. Opsi:(Laki-laki / Perempuan)","Pesan Error",JOptionPane.ERROR_MESSAGE);
        }else if(cmb_lulus.getSelectedIndex() == 0){
            JOptionPane.showMessageDialog(null, "Pilihan lulus salah.. Opsi:(Lulus Tepat Waktu / Lulus Tidak Tepat Waktu)","Pesan Error",JOptionPane.ERROR_MESSAGE);
        }else if(cmb_marital.getSelectedIndex() == 0){
            JOptionPane.showMessageDialog(null, "Pilihan status nikah salah.. Opsi:(Menikah / Tidak Menikah)","Pesan Error",JOptionPane.ERROR_MESSAGE);
        }else{
            this.UpdateData();
        }                
}//GEN-LAST:event_btn_updateActionPerformed

    private void tbltrainingproses1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbltrainingproses1MouseClicked
        txt_id.setEditable(false);
        btn_update.setEnabled(true);
        btn_delete.setEnabled(true);
        btn_insert.setEnabled(false);
        ShowData();
}//GEN-LAST:event_tbltrainingproses1MouseClicked

    private void btn_exitActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_exitActionPerformed
        dispose();
}//GEN-LAST:event_btn_exitActionPerformed

    private void btn_newActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_newActionPerformed
        txt_id.setEditable(true);
        btn_insert.setEnabled(true);
        btn_update.setEnabled(false);
        btn_delete.setEnabled(true);
        this.HapusText();
    }//GEN-LAST:event_btn_newActionPerformed

    /**
    * @param args the command line arguments
    */
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_delete;
    private javax.swing.JButton btn_exit;
    private javax.swing.JButton btn_insert;
    private javax.swing.JButton btn_new;
    private javax.swing.JButton btn_update;
    private javax.swing.JComboBox cmb_cuti;
    private javax.swing.JComboBox cmb_ipk;
    private javax.swing.JComboBox cmb_jk;
    private javax.swing.JComboBox cmb_lulus;
    private javax.swing.JComboBox cmb_marital;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tbltrainingproses1;
    private javax.swing.JTextField txt_id;
    // End of variables declaration//GEN-END:variables

}
