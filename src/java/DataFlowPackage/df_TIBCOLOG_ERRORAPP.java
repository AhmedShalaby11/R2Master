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
public class df_TIBCOLOG_ERRORAPP extends HttpServlet {

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

            out.print("Calling _TIBCOJSON API \n ============= \n");

            String Application = request.getParameter("Application");
            String _file = request.getParameter("fileName");
            String tablename = request.getParameter("tablename");
            String duration = request.getParameter("duration");
            String partition = request.getParameter("partition");
            
            String _query = "select applicationid,servicename,hostname,time_Stamp,transaction,correlationid,vfebusinessidvalue From"
                    + "  " + tablename + " partition (\"" + partition + "\" )where applicationid  like  '" + Application + "%' and servicename like '%'and "
                    + "(transaction like '%-500%')and time_stamp > sysdate - " + duration + "/24   "
                    + "order by time_stamp desc";

            out.print("1.Got filename and Query \n");

            try {

                env.setEnv("Windows");
//            String _query = request.getParameter("_sql");
//            String _file = request.getParameter("fileName");
                stmt.setStatement(_query);
                stmt.setFileName(_file);

                OracleDataSource ods = new OracleDataSource();
                ods.setURL("jdbc:oracle:thin:commonle_vfe/commonle_vfe@10.230.92.171:1528:EAIPRD2");
                try {
                    con = ods.getConnection();

                } catch (Exception ex) {
                    System.out.print(ex.toString());
                    out.print("Exception: " + ex);
                }
                
                out.print("2.Connected \n");
                Statement stmt = con.createStatement();
                out.print("3.Statement Created \n");
                String s = stm.getStatement();

                File dtfile = new File(env._FolderPath + _file + ".txt");
                out.print("4.Created new file: " + dtfile + "\n");
                stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
                ResultSet rs = stmt.executeQuery(stm.getStatement());
                out.print("3.1. executed \n");

                PrintWriter dtwriter = new PrintWriter(dtfile, "UTF-8");

                dtwriter.print("{\n"
                        + "  \"data\": [");
                out.print("5.Writing data in file \n");
                while (rs.next()) {
                    count++;

                    String applictionid = rs.getString(1);
                    String servicename = rs.getString(2);
                    String hostname = rs.getString(3);
                    String time_Stamp = rs.getString(4);
//                String transaction = rs.getString(5);
                    String correlationid = rs.getString(6);
                    String vfebusinessidvalue = rs.getString(7);

                    dtwriter.println("  [\n"
                            + "      \"" + applictionid + "\",\n"
                            + "      \"" + servicename + "\",\n"
                            + "      \"" + hostname + "\",\n"
                            + "      \"" + time_Stamp + "\",\n"
                            //                        + "      \"" + transaction + "\",\n"
                            + "      \"" + correlationid + "    \",\n"
                            + "      \"" + vfebusinessidvalue + "\"\n"
                            + "    ],");
//                

                }   
                dtwriter.append("[\"\",\"\",\"\",\"\",\"\",\"\"]]}");

                dtwriter.close();
                out.print("6.File was appanded in " + dtfile + "\n");

                
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
