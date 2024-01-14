using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeDetails : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Random r = new Random();
            String s = r.NextDouble().ToString();
            s = s.Substring(4, 5);
            lblEmployeeid.Text = s;

        }
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string str = "insert into employeedetails(EmployeeRegId, Name, Phone, Email, Designation, Qualification)values('" + lblEmployeeid.Text + "','" + txtname.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + ddlDesignation.SelectedItem.Text + "','" + ddlQualification.SelectedItem.Text + "')";
        dl.DmlCmd(str);
        Response.Write("<script language='javaScript'>alert('Employee Is Registered....')</script>");
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtphone.Text = "";
        ddlQualification.SelectedIndex = 0;
        ddlDesignation.SelectedIndex = 0;
    }
}