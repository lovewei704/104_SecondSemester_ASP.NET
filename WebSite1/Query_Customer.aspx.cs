using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Query_Customer : Base
{
    db mydb = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            GetAllCustomer();
        }
    }
    void GetAllCustomer()
    {
        string sqlstr;
        sqlstr = "select CustomerID,CompanyName, RegionID, Picture from Customers ";


        CustomerGrid.DataSource = mydb.BuildDataTable(sqlstr); ;
        CustomerGrid.DataBind();
    }

    protected void CustomerGrid_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string myCustomerID = e.CommandArgument.ToString().Trim();
        Response.Redirect("Detail_Customer.aspx?CustomerID=" + myCustomerID);
    }
}