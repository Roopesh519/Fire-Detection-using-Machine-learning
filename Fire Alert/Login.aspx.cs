using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtuser.Text = "";
        txtpass.Text = "";
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
       
        string str = "select * from registration where UserName='" + txtuser.Text + "'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            str = "select * from registration where UserName='" + txtuser.Text + "'and Password='" +txtpass.Text+ "'";
            DataSet dsp = new DataSet();
            dsp = dl.GetDataSet(str);
            if (dsp.Tables[0].Rows.Count > 0)
            {
                Session["uname"] = txtuser.Text;
                if (dsp.Tables[0].Rows[0]["UserType"].ToString() == "Admin")
                {
                    Response.Redirect("EmployeDetails.aspx");
                }
                else if (dsp.Tables[0].Rows[0]["UserType"].ToString() == "User")
                {
                    Response.Redirect("Complaint.aspx");
                }
                //else if (dsp.Tables[0].Rows[0]["UserType"].ToString() == "Seller")
                //{
                //    Response.Redirect("view_billing.aspx");
                //}
            }
            else
            {
                Response.Write("<script language='javaScript'>alert('Invalid Password...')</script>");
            }
        }
        else
        {
            Response.Write("<script language='javaScript'>alert('Invalid User...')</script>");

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }
    
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {

    }
}