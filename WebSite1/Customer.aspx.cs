using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Customer : Base
{
    public db mydb = new db();
    public DataTable RegionSet = new DataTable();
    public string regionSelect;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            //BuildRegion();
            QueryAll();
        }
    }

    //void BuildRegion()
    //{
    //    string str = "select RegionID, RegionDescription from Region";
    //    RegionDropDownList.DataSource = mydb.BuildDataTable(str);
    //    RegionDropDownList.DataBind();
    //}
    protected void getSelect(object sender, EventArgs e)
    {
        regionSelect = RegionDropDownList.myRegionSelectValue;
    }
    protected void insertButton_Click(object sender, EventArgs e)
    {
        // insert into Customers(CustomerID,CompanyName) values('111','222')

        string sqlstr = "insert into Customers(customerId, CompanyName, RegionID, Picture)Values(";
        sqlstr += mydb.Qo(idTextbox.Text) + " ,";
        sqlstr += mydb.Qo(nameTextbox.Text) + ",";
        sqlstr += mydb.Qo(regionSelect) + ",";
        sqlstr += mydb.Qo(PictureName.Text) + ")";
        mydb.SQLexec(sqlstr);

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
                sqlstr = " delete from Customers where CustomerID = " + mydb.Qo(((Label)GridView.Rows[idx].FindControl("CustomerIdLabel")).Text);
                mydb.SQLexec(sqlstr);
            }
            else
            {
                sqlstr = "Update Customers set CompanyName = " + mydb.Qo(((TextBox)GridView.Rows[idx].FindControl("CompanyNameTB")).Text.Trim());
                sqlstr += ", CustomerID = " + mydb.Qo(((TextBox)GridView.Rows[idx].FindControl("CustomerIdTB")).Text.Trim());
                sqlstr += ", RegionID = " + ((DropDownList)GridView.Rows[idx].FindControl("RegionList")).SelectedValue;
                sqlstr += ", Picture = " + mydb.Qo(((TextBox)GridView.Rows[idx].FindControl("PictureTB")).Text.Trim());
                sqlstr += " where CustomerID = " + mydb.Qo(((Label)GridView.Rows[idx].FindControl("CustomerIdLabel")).Text);
                mydb.SQLexec(sqlstr);
            }
        } // for
        
        QueryAll();
    } //batch
    void QueryAll()
    {
        string sqlstr;
        sqlstr = "SELECT RegionID, RegionDescription ";
        sqlstr += " FROM Region ";
        RegionSet = mydb.BuildDataTable(sqlstr);

        sqlstr = "select CustomerID,CompanyName, RegionID, Picture from Customers ";
        GridView.DataSource = mydb.BuildDataTable(sqlstr); ;
        GridView.DataBind();
    }

}