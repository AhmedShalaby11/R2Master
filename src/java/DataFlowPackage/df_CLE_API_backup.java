/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataFlowPackage;

import java.io.BufferedWriter;
import java.io.Console;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.sql.Array;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import oracle.jdbc.pool.OracleDataSource;

/**
 *
 * @author AShalaby11
 */
public class df_CLE_API_backup {

    Connection con;
    df_vars stm = new df_vars();
    df_env_config env = new df_env_config();
    ArrayList RESULT = new ArrayList();
    static List<String[]> table = new ArrayList<>();

    public void CLE_openConnection() {

        try {
           
            OracleDataSource ods = new OracleDataSource();
            ods.setURL("jdbc:oracle:thin:commonle_vfe/commonle_vfe@10.230.92.171:1528:EAIPRD2");
            try {
                con = ods.getConnection();

            } catch (Exception ex) {
                System.out.print(ex.toString());

            }
            Statement stmt = con.createStatement();
            String s = stm.getStatement();

            File file = new File(env._FolderPath_Windows+stm.getFileName()+".json");
//     File dtfile = new File("web\\CSV\\dtdata.json");
           
     
     stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = stmt.executeQuery(stm.getStatement());

            PrintWriter writer = new PrintWriter(file, "UTF-8");
//               PrintWriter dtwriter = new PrintWriter(dtfile, "UTF-8");
            writer.print("{\n" +
"  \"cols\": [\n" +
"        {\"id\":\"\",\"label\":\"app\",\"pattern\":\"\",\"type\":\"string\"},\n" +
"        {\"id\":\"\",\"label\":\"id\",\"pattern\":\"\",\"type\":\"number\"}],\"rows\": [\n");
            
            
//            dtwriter.print("{\n" +
//"  \"data\": [");
            while (rs.next()) {
                String app_name = rs.getString(2);
                String co_id = rs.getString(1);
//                int ResultNum =rs.getFetchSize();
//                int CurrentRow = rs.getRow();
                
                    writer.println("{\"c\":[{\"v\":\""+app_name+"\",\"f\":null},{\"v\":"+co_id+",\"f\":"+co_id+"}]},");
             
                
             
//                       dtwriter.println("  [\n" +
//"      \""+app_name+"\",\n" +
//"      \""+co_id+"\"\n" +
//"    ],");
//                
                               
            }
//            dtwriter.println("]}");
            writer.println("]\n" +"}");
            writer.close();
//            dtwriter.close();
            con.close();
           
            //for dt
            
            
        } catch (Exception e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        }
    }

    public void CLE_createStatement() {
        try {

        } catch (Exception ex) {
            System.out.print(ex.toString());
        }

    }

}
