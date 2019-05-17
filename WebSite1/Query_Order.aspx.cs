using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Query_Order : System.Web.UI.Page
{
    public db mydb = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            GetAll();
        }
    }
    void GetAll()
    {
        string sqlstr;
        sqlstr = "SELECT OrderID, CustomerID, ProductID, Qty , Amount FROM myOrder";
        OrderGrid.DataSource = mydb.BuildDataTable(sqlstr);
        OrderGrid.DataBind();
    }

    protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string myOrderID = e.CommandArgument.ToString().Trim();
        Response.Redirect("Detail_Order.aspx?OrderID=" + myOrderID);
    }

}