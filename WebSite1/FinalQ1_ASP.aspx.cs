using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class FinalQ1_ASP : Base
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

        }
    }

    public bool symbolOnClick = false;
    public string outputString = "";
    public double outputResult = 0;
    public string temp = "0";

    protected void Button_1_Click(object sender, EventArgs e)
    {
        outputString += "1";
        temp += "1";
    }
    protected void Button_2_Click(object sender, EventArgs e)
    {
        outputString += "2";
        temp += "2";
    }
    protected void Button_3_Click(object sender, EventArgs e)
    {
        outputString += "3";
        temp += "3";
    }
    protected void Button_4_Click(object sender, EventArgs e)
    {
        outputString += "4";
        temp += "4";
    }
    protected void Button_5_Click(object sender, EventArgs e)
    {
        outputString += "5";
        temp += "5";
    }
    protected void Button_6_Click(object sender, EventArgs e)
    {
        outputString += "6";
        temp += "6";
    }
    protected void Button_7_Click(object sender, EventArgs e)
    {
        outputString += "7";
        temp += "7";
    }
    protected void Button_8_Click(object sender, EventArgs e)
    {
        outputString += "8";
        temp += "8";
    }
    protected void Button_9_Click(object sender, EventArgs e)
    {
        outputString += "9";
        temp += "9";
    }
    protected void Button_0_Click(object sender, EventArgs e)
    {
        outputString += "0";
        temp += "0";
    }
    protected void Button_Plus_Click(object sender, EventArgs e)
    {
        if (!symbolOnClick)
        {
            symbolOnClick = true;
            outputString += "+";
        }
        temp = "";
    }
    protected void Button_Minus_Click(object sender, EventArgs e)
    {
        if (!symbolOnClick)
        {
            symbolOnClick = true;
            outputString += "-";
        }
        temp = "";
    }
    protected void Button_Times_Click(object sender, EventArgs e)
    {
        if (!symbolOnClick)
        {
            symbolOnClick = true;
            outputString += "*";
        }
        temp = "";
    }
    protected void Button_Divide_Click(object sender, EventArgs e)
    {
        if (!symbolOnClick)
        {
            symbolOnClick = true;
            outputString += "/";
        }
        temp = "";
    }
    protected void Button_Dot_Click(object sender, EventArgs e)
    {
        outputString += ".";
        temp += ".";
    }
    protected void Button_Equal_Click(object sender, EventArgs e)
    {
        outputString += "=";
    }
}