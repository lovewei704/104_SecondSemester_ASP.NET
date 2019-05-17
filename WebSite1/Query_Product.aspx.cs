using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Query_Product : System.Web.UI.Page
{
    db mydb = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            GetAllProduct();
        }
    }
    void GetAllProduct()
    {
        string sqlstr;
        sqlstr = "select ProductID,ProductName, SupplierID, CategoryID, Picture from Products ";


        GridView.DataSource = mydb.BuildDataTable(sqlstr); ;
        GridView.DataBind();
    }

    protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string myProductID = e.CommandArgument.ToString().Trim();
        Response.Redirect("Detail_Product.aspx?ProductID=" + myProductID);
    }
}