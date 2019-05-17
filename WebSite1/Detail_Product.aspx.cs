using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
public partial class Detail_Product : System.Web.UI.Page
{
    db mydb = new db();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string myCustomerID = Request.QueryString["ProductID"];
            ProductID.Text = myCustomerID;
            string sqlstr = " select ProductName, Picture ";
            sqlstr += " from Products ";
            sqlstr += " where ProductID = " + mydb.Qo(myCustomerID);




            DataTable myTable = new DataTable();
            myTable = mydb.BuildDataTable(sqlstr);


            ProductName.Text = myTable.Rows[0]["ProductName"].ToString();
            PictureName.Text = myTable.Rows[0]["Picture"].ToString();
            PictureImg.ImageUrl = "./img/" + myTable.Rows[0]["Picture"].ToString().Trim();
            //CustomerName = myTable.Columns[0].ToString().Trim();
        }
    }
    protected void UpdateCustomer_Click(object sender, EventArgs e)
    {
        Response.Redirect("Query_Product.aspx");
    }
}