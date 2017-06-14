/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataFlowPackage;

/**
 *
 * @author AShalaby11
 */
public class df_env_config {
 public static   String _FolderPath ;
 public static   String _FolderPath_Windows ;
 public static   String _FolderPath_Mac = "";
    
    public void setEnv(String Env){
      if (Env == "Linux")
      {
        this._FolderPath=  "/verisure/portal/apache-tomcat-7.0.68/webapps/R2Analytics/CSV/";
      }
      else if (Env =="Windows")
      {
          this._FolderPath = "C:\\Users\\AShalaby11\\Documents\\NetBeansProjects\\R2Analytics\\web\\CSV\\"; 
      }
    };
    
  
    
    
}
