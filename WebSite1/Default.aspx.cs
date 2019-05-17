using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : Base
{
    public db mydb = new db();
    public DataTable myTable = new DataTable(); 

    public string[] checkNum = new string[6];

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] != null)
        {
            if (Session["Login"].ToString() != "Y")
            {
                Panel_Login.Visible = true;
                Panel_Main.Visible = false;
                return;
                //setVerification();
            }
            else
            {
                Panel_Login.Visible = false;
                Panel_Main.Visible = true;
            }
        }
        else
        {
            Panel_Login.Visible = true;
            Panel_Main.Visible = false;
            setVerification();
        }
    }

    public void setVerification()
    {
        Session["Login"] = "";
        Random rand = new Random();

        checkNum[0] = rand.Next(0, 10).ToString();
        Session["Ans"] += checkNum[0];

        for (int i = 1; i <= 3; i++)
        {
            checkNum[i] = rand.Next(0, 10).ToString();
            Session["Ans"] += checkNum[i];
        }
    }

    protected void loginBTN_Click(object sender, EventArgs e)
    {
        string Amount = AmountTB.Text;
        string Password = PasswordTB.Text;

        string Select = "SELECT Password FROM Customers Where CustomerID = " + mydb.Qo(Amount);
        myTable = mydb.BuildDataTable(Select);

        if (Password == myTable.Rows[0][0].ToString().Trim() && verTB.Text == Session["Ans"].ToString().Trim())
        {
            Panel_Login.Visible = false;
            Panel_Main.Visible = true;
            Session["Login"] = "Y";
        }
        else
        {
            ShowMessage.Visible = true;
            ShowMessage.Text = "登入失敗，請重新輸入！";
            setVerification();
            return;
        }
        
    }
}