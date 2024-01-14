using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class changepassword : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        if (txtcurentpass.Text.Length < 8)
        {
            Response.Write("<script language=Javascript> alert('Password  should be minimum 8 charcaters')</script>");
        }
        if (txtnewpass.Text.Length < 8)
        {
            Response.Write("<script language=Javascript> alert('Password  should be minimum 8 charcaters')</script>");
        }

        else
        {
            string str = "select * from registration where UserName ='" + Session["uname"].ToString() + "' and Password='" + txtcurentpass.Text + "'";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str);
            if (ds.Tables[0].Rows.Count > 0)
            {
                str = "update registration set Password='" + txtnewpass.Text + "' where UserName='" + Session["uname"].ToString() + "'";
                dl.DmlCmd(str);
                Response.Write("<script language='javascript'>alert('Password changed sucessfully...')</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('invalid password....')</script>");
            }
        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtcurentpass.Text = "";
        txtnewpass.Text = "";
        txtconfpass.Text = "";
    }
}