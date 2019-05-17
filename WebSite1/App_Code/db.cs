using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;
/// <summary>
/// db 的摘要描述
/// </summary>
public class db
{
	
	//產生sqlserver相關的物件 
    public SqlCommand AccCommand = new SqlCommand();
    public SqlDataReader AccReader;
    public SqlDataAdapter AccAdapter = new SqlDataAdapter();
    //產生連結物件，最重要， 產生成功了表示連上資料庫
    static string connStr = @"Persist Security Info=False;Integrated Security=true; Initial Catalog=Northwind;Server=.";
    public SqlConnection AccConn = new SqlConnection(connStr);

	
 public DataTable BuildDataTable(string sqlstr)
    {
        DataTable DataTableX = new DataTable();
        SqlDataAdapter AccAdapter = new SqlDataAdapter();
        //顯示錯誤SQL與錯誤訊息
        try
        {
            AccAdapter.SelectCommand = new SqlCommand(sqlstr, AccConn);
            AccConn.Open();
            AccAdapter.Fill(DataTableX);
            AccConn.Close();
        }
        catch (Exception ex)
        {
            AccConn.Close();
            throw new Exception(ex.Message + "原引用SQL:『" + sqlstr + "");
        }
        return DataTableX;
    }

public void SQLexec(string sqlstr)
    {
        string tranStr;
        tranStr = "Begin Transaction ";
        tranStr += sqlstr;
        tranStr += "  if @@ERROR = 0 ";
        tranStr += "  commit transaction ";
        tranStr += "  else ";
        tranStr += "  rollback transaction ";
        //sysMsg = "";
        try
        {
            AccCommand.Connection = AccConn;
            AccCommand.CommandText = tranStr;
            AccConn.Open();
            AccCommand.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            //sysMsg = ex.Message;
            AccConn.Close();
        }
        finally
        { AccConn.Close(); }
    }


    public string Qo(string instr)
    {
    return "'" + instr + "'";
    }

    public int GetTableRowIndex(string myValue, DataTable dt)
    {
        for (int idx = 0; idx < dt.Rows.Count; idx++)
        {
            if (myValue.Trim() == dt.Rows[idx][0].ToString().Trim())
                return idx;
        }
        return 0;
    }

    public string Get_Reader_Item(int item_no, string sqlstr)
    {
        SqlDataReader myReader;
        AccCommand.Connection = AccConn;
        AccCommand.CommandText = sqlstr;
        AccConn.Open();
        myReader = AccCommand.ExecuteReader();
        string retStr = "";
        if (myReader.HasRows)
        {
            if (myReader.Read())
            {
                retStr = myReader[item_no - 1].ToString();
            }
        }
        AccConn.Close();
        return retStr;
    } // end of Get_Reader_Item

}