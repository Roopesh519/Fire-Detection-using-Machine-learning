using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Complaint : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Random r = new Random();
            String s = r.NextDouble().ToString();
            s = s.Substring(4, 5);
            lblcomplaintno.Text = s;
            lbldate.Text = DateTime.Now.ToString("dd/MM/yyyy");
        }
    }
    protected void btncomplaint_Click(object sender, EventArgs e)
    {
        string str = "insert into complaint(ComplaintNo,description,date,status)values('" + lblcomplaintno.Text + "','" +txtDescription.Text + "','" + lbldate.Text + "','Pending')";
        dl.DmlCmd(str);
        Response.Write("<script language='javaScript'>alert('Complaint Loadged....')</script>");
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtDescription.Text = "";
    }
}