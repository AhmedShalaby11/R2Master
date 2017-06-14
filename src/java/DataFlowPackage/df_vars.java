/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataFlowPackage;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/**
 *
 * @author AShalaby11
 */


public class df_vars {
public static String _sqlStatment ;
public static String _fileName ;
public void setStatement (String sql){
   this._sqlStatment =sql  ;
}

public String getStatement()
{
    return _sqlStatment;
}

public void setFileName (String file){
   this._fileName =file  ;
}
public String getFileName()
{
    return _fileName;
}

public void replaceFile ()
{
      try
             {
              
             BufferedReader reader = new BufferedReader(new FileReader("_dataTable.txt"));
             String line = "", oldtext = "";
             while((line = reader.readLine()) != null)
                 {
                 oldtext += line + "\r\n";
             }
             reader.close();
             // replace a word in a file
             //String newtext = oldtext.replaceAll("drink", "Love");
            
             //To replace a line in a file
             String newtext = oldtext.replaceAll("],\n" +
"]}", "]\n" +
"]}");
            
             FileWriter writer = new FileWriter("_dataTable2.txt");
             writer.write(newtext);writer.close();
         }
         catch (IOException ioe)
             {
             ioe.printStackTrace();
         }

            //for dt
        
}
}
