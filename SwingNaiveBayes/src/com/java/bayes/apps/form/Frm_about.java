/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * Frm_about.java
 *
 * Created on Jun 5, 2013, 7:37:45 PM
 */

package com.java.bayes.apps.form;

/**
 *
 * @author Aries
 */
public class Frm_about extends javax.swing.JFrame {

    /** Creates new form about */
    public Frm_about() {
        initComponents();
        setLocationRelativeTo(rootPane);
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanelImageBackground1 = new wordpress.eecchhoo.jpanelimagebackground.JPanelImageBackground();
        jButton1 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("About");

        jPanelImageBackground1.setGambar(new java.io.File("D:\\image\\DroidJava.png"));

        jButton1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/com/java/bayes/apps/resources/keluar.png"))); // NOI18N
        jButton1.setText("Exit");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Cataneo BT", 1, 18)); // NOI18N

        jLabel3.setFont(new java.awt.Font("Cataneo BT", 1, 18)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(0, 51, 0));
        jLabel3.setText("NAMA ");

        jLabel9.setFont(new java.awt.Font("Cataneo BT", 1, 18)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(0, 51, 0));
        jLabel9.setText("0901651143");

        jLabel4.setFont(new java.awt.Font("Times New Roman", 0, 12)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(255, 255, 255));
        jLabel4.setText("Netbeans 6.9 | My SQL 5.5.27  ");

        jLabel7.setFont(new java.awt.Font("Cataneo BT", 1, 18)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(0, 51, 0));
        jLabel7.setText("N I M");

        jLabel8.setFont(new java.awt.Font("Cataneo BT", 1, 18)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(0, 51, 0));
        jLabel8.setText(":");

        jLabel5.setFont(new java.awt.Font("Cataneo BT", 1, 18)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(0, 51, 0));
        jLabel5.setText(":");

        jLabel6.setFont(new java.awt.Font("Cataneo BT", 1, 18)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(0, 51, 0));
        jLabel6.setText("ARIS GUNAWAN");

        javax.swing.GroupLayout jPanelImageBackground1Layout = new javax.swing.GroupLayout(jPanelImageBackground1);
        jPanelImageBackground1.setLayout(jPanelImageBackground1Layout);
        jPanelImageBackground1Layout.setHorizontalGroup(
            jPanelImageBackground1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelImageBackground1Layout.createSequentialGroup()
                .addGroup(jPanelImageBackground1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanelImageBackground1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jLabel2))
                    .addGroup(jPanelImageBackground1Layout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addComponent(jLabel4)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanelImageBackground1Layout.createSequentialGroup()
                .addContainerGap(182, Short.MAX_VALUE)
                .addGroup(jPanelImageBackground1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanelImageBackground1Layout.createSequentialGroup()
                        .addComponent(jLabel7)
                        .addGap(18, 18, 18)
                        .addComponent(jLabel5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel9))
                    .addGroup(jPanelImageBackground1Layout.createSequentialGroup()
                        .addComponent(jLabel3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel8)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel6)))
                .addGap(102, 102, 102))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanelImageBackground1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanelImageBackground1Layout.setVerticalGroup(
            jPanelImageBackground1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelImageBackground1Layout.createSequentialGroup()
                .addComponent(jLabel2)
                .addGap(73, 73, 73)
                .addGroup(jPanelImageBackground1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(jLabel8)
                    .addComponent(jLabel6))
                .addGap(16, 16, 16)
                .addGroup(jPanelImageBackground1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel7)
                    .addComponent(jLabel5)
                    .addComponent(jLabel9))
                .addGap(18, 18, 18)
                .addComponent(jButton1)
                .addGap(32, 32, 32)
                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 26, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanelImageBackground1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanelImageBackground1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        dispose();
    }//GEN-LAST:event_jButton1ActionPerformed

    /**
    * @param args the command line arguments
    */
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private wordpress.eecchhoo.jpanelimagebackground.JPanelImageBackground jPanelImageBackground1;
    // End of variables declaration//GEN-END:variables

}
