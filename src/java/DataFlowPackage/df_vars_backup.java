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
public class df_vars_backup {
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
}
