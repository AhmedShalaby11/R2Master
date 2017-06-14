    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataFlowPackage;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import oracle.jdbc.pool.OracleDataSource;

/**
 *
 * @author AShalaby11
 */
public class df_transaction extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    df_CLE_API con1 = new df_CLE_API();
    df_env_config env = new df_env_config();
    df_vars stm = new df_vars();
    df_vars stmt = new df_vars();
    ArrayList RESULT = new ArrayList();
    int count = 0;
    Connection con;

    static List<String[]> table = new ArrayList<>();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

           
             
//            String co_id = request.getParameter("co_id");
          String co_id = "a0c9e1c60ae65ccd2dda6548d9e3989a";
           
            
            String _query = "select transaction From log"
                    +" where correlationid  =  '" + co_id + "' "
                    + " and(transaction like '%|%' or transaction like '%>-%')   ";


            try {

                env.setEnv("Windows");
//            String _query = request.getParameter("_sql");
//            String _file = request.getParameter("fileName");
                stmt.setStatement(_query);
   

                OracleDataSource ods = new OracleDataSource();
                ods.setURL("jdbc:oracle:thin:commonle_vfe/commonle_vfe@10.230.92.171:1528:EAIPRD2");
                try {
                    con = ods.getConnection();

                } catch (Exception ex) {
                    System.out.print(ex.toString());
                    out.print("Exception: " + ex);
                }
                
               
                Statement stmt = con.createStatement();
              
                String s = stm.getStatement();

              
                stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                ResultSet rs = stmt.executeQuery(s);
               

             

 
                while (rs.next()) {
           

                    String transaction = rs.getString(1);
                    out.print(transaction.toString());


                }
    
                con.close();

                //for dt
            } catch (Exception e) {
                System.err.println("Got an exception! ");
                System.err.println(e.getMessage());

            }
        }

        try {

        } catch (Exception ex) {
            System.out.print(ex.toString());

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
