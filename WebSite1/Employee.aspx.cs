using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Employee : System.Web.UI.Page
{
    public db mydb = new db();
    public DataTable RegionSet = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}