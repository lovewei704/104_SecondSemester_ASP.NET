using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Order : System.Web.UI.Page
{
    public db mydb = new db();
    public DataTable CustomerSet = new DataTable();
    public DataTable ProductSet = new DataTable(); 

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            BuildAll();
        }
    }

    void BuildAll()
    {
        string sqlstr;
        sqlstr = "SELECT CustomerID, CompanyName FROM Customers"; 
        CustomerList.DataSource = mydb.BuildDataTable(sqlstr);
        CustomerList.DataBind();
        
        sqlstr = "SELECT ProductID, ProductName FROM Products";
        ProductList.DataSource = mydb.BuildDataTable(sqlstr);
        ProductList.DataBind();
    }

    protected void ProductList_selectedIndexChanged(object sender, EventArgs e)
    {
        string sqlstr = " select UnitPrice from Products where ProductID = " + ProductList.SelectedValue;
        UnitPrice.Text = mydb.Get_Reader_Item(1, sqlstr);
        caculate();
    }

    protected void Qty_TextChanged(object sender, EventArgs e)
    {
        caculate();
    }
    void caculate()
    {
        double Q = 0;
        double U = 0;
        double A = 0;

        if (UnitPrice.Text != string.Empty && Qty.Text != string.Empty)
        {
            Q = double.Parse(Qty.Text);
            U = double.Parse(UnitPrice.Text.ToString());
            A = Q * U;
        }

        Amount.Text = A.ToString();
    }

    protected void Button_Click(object sender, EventArgs e)
    {
        string insertStr = "insert into myOrder(OrderID, CustomerID, ProductID, Qty, Amount)Values(";
        insertStr += OrderID.Text + ",";
        insertStr += mydb.Qo(CustomerList.SelectedValue) + ",";
        insertStr += ProductList.SelectedValue + ",";
        insertStr += Qty.Text + " ,";
        insertStr += Amount.Text + ")";

        mydb.SQLexec(insertStr);
    }
}