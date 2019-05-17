using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
public partial class Detail_Customer : System.Web.UI.Page
{
    db mydb = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string myCustomerID = Request.QueryString["CustomerID"];
            CustomerID.Text = myCustomerID;
            string sqlstr = " select CompanyName, Picture ";
            sqlstr += " from Customers ";
            sqlstr += " where CustomerID = " + mydb.Qo(myCustomerID);



            DataTable myTable = new DataTable();
            myTable = mydb.BuildDataTable(sqlstr);


            CompanyName.Text = myTable.Rows[0]["CompanyName"].ToString();
            PictureName.Text = myTable.Rows[0]["Picture"].ToString();
            PictureImg.ImageUrl = "./img/" + myTable.Rows[0]["Picture"].ToString().Trim();
            //CustomerName = myTable.Columns[0].ToString().Trim();
        }
    }
    protected void UpdateCustomer_Click(object sender, EventArgs e)
    {
        Response.Redirect("Query_Customer.aspx");
    }
}