using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Base 的摘要描述
/// </summary>
public class Base : System.Web.UI.Page
{
    public Base()
    { }

    protected override void OnPreInit(System.EventArgs e)
    {
        if (Session["Login"] != null)
        {
            if (Session["Login"].ToString() != "Y")
            {
                Response.Redirect("default.aspx");
            }
        }
        else
        {
            Response.Redirect("default.aspx");
        }
    }
    
}