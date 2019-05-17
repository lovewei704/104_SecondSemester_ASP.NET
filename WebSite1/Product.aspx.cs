using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Product : System.Web.UI.Page
{
    public db mydb = new db();
    public DataTable SupplierSet = new DataTable();
    public DataTable CategorySet = new DataTable(); 

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.IsPostBack == false)
        {
            BuildSupplier();
            BuildCategory();
            QueryAll();
        }
    }

    void BuildSupplier()
    {
        string str = "select SupplierID, CompanyName from Suppliers";
        SupplierDropDownList.DataSource = mydb.BuildDataTable(str);
        SupplierDropDownList.DataBind();
    }

    void BuildCategory()
    {
        string str = "select CategoryID, CategoryName from Categories";
        CategoryDropDownList.DataSource = mydb.BuildDataTable(str);
        CategoryDropDownList.DataBind();
    }

    protected void selectButton_Click(object sender, EventArgs e)
    {
        QueryAll();
    }

    void QueryAll()
    {
        string sqlstr;
        sqlstr = "SELECT SupplierID, CompanyName FROM Suppliers";
        SupplierSet = mydb.BuildDataTable(sqlstr);

        sqlstr = "SELECT CategoryID, CategoryName FROM Categories";
        CategorySet = mydb.BuildDataTable(sqlstr);

        sqlstr = " Select ProductID, ProductName, SupplierID, CategoryID, Picture from Products ";
        GridView.DataSource = mydb.BuildDataTable(sqlstr);
        GridView.DataBind();
    }

    protected void insertButton_Click(object sender, EventArgs e)
    {
        // insert into Products(ProductID,ProductName) values('111','222')
        string insertStr = "insert Products(ProductName, SupplierID, CategoryID, Picture)Values(";
        insertStr += mydb.Qo(nameTextbox.Text) + " ,";
        insertStr += SupplierDropDownList.SelectedValue + ",";
        insertStr += CategoryDropDownList.SelectedValue + ",";
        insertStr += mydb.Qo(PictureName.Text) + ")";

        mydb.SQLexec(insertStr);
        GridView.DataBind();
        QueryAll();
    }

    protected void Upload_Click(object sender, EventArgs e)
    {
        if (FileUpload.FileName != string.Empty)
        {
            string pathx = Server.MapPath("/img");
            PictureName.Text = FileUpload.FileName;
            FileUpload.SaveAs(pathx + "/" + FileUpload.FileName);
            ImageBox.ImageUrl = "./img/" + PictureName.Text.Trim();
        }
        else
        {
            PictureName.Text = "ERROR";
        }
    }

    protected void UpdateBatch_Click(object sender, EventArgs e)
    {
        string sqlstr;
        for (int idx = 0; idx < GridView.Rows.Count; idx++)
        {
            if (((RadioButton)GridView.Rows[idx].FindControl("Flag_Del")).Checked)
            {
                sqlstr = " delete from Products where ProductID = " + mydb.Qo(((Label)GridView.Rows[idx].FindControl("ProductIdLabel")).Text);
                mydb.SQLexec(sqlstr);
            }
            else
            {
                sqlstr = "Update Products set ProductName = " + mydb.Qo(((TextBox)GridView.Rows[idx].FindControl("ProductNameTB")).Text.Trim());
                //sqlstr += " ,ProductIdTB = " + mydb.Qo(((TextBox)GridView.Rows[idx].FindControl("ProductIdTB")).Text.Trim());
                sqlstr += ", SupplierID = " + ((DropDownList)GridView.Rows[idx].FindControl("SupplierList")).SelectedValue;
                sqlstr += ", CategoryID = " + ((DropDownList)GridView.Rows[idx].FindControl("CategoryList")).SelectedValue;
                sqlstr += ", Picture = " + mydb.Qo(((TextBox)GridView.Rows[idx].FindControl("PictureTB")).Text.Trim());
                sqlstr += " where ProductID = " + mydb.Qo(((Label)GridView.Rows[idx].FindControl("ProductIdLabel")).Text);
                mydb.SQLexec(sqlstr);
            }
        } // for
        QueryAll();
    } //batch
}