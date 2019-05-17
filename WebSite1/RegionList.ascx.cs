using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class RegionList : System.Web.UI.UserControl
{
    public event EventHandler ClickList;
    public db mydb = new db();
    public string myRegionSelectValue = "1";
    
    public DropDownList myRegionList
    {
        get { return RegionDropDownList; }
    }
    protected void RegionDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {   
        if (this.ClickList != null)
        {        
            myRegionSelectValue = RegionDropDownList.SelectedValue;
            this.ClickList(this, EventArgs.Empty); //new EventArgs())
        } 
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BuildRegion();
        }
    }
    void BuildRegion()
    {
        string str = "select RegionID, RegionDescription from Region";
        RegionDropDownList.DataSource = mydb.BuildDataTable(str);
        RegionDropDownList.DataBind();
    }
}