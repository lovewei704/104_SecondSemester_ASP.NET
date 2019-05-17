using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Detail_Order : System.Web.UI.Page
{
    db mydb = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string myOrderID = Request.QueryString["OrderID"];
            OrderID.Text = myOrderID;
            string sqlstr = " select OrderID, CustomerID, ProductID, Qty, Amount";
            sqlstr += " from myOrder ";
            sqlstr += " where OrderID = " + mydb.Qo(myOrderID);

            DataTable myTable = new DataTable();
            myTable = mydb.BuildDataTable(sqlstr);

            //CustomerIDList.Text = myTable.Rows[0]["CustomerIDList"].ToString();
            //PictureImg.ImageUrl = "./img/" + myTable.Rows[0]["Picture"].ToString().Trim();
            //CustomerName = myTable.Columns[0].ToString().Trim();
        }
    }
    protected void UpdateCustomer_Click(object sender, EventArgs e)
    {
        Response.Redirect("Query_Customer.aspx");
    }
}