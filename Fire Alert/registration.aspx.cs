using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class registration : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    public static string id = "";
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        if (txtphone.Text.Length < 10)
        {
            Response.Write("<script language='javascript'>alert('enter 10 digit number')</script>");
            return;
        }
           
            String str1 = "select * from registration where UserName='" + txtname.Text + "'";
            DataSet ds = new DataSet();
            ds = dl.GetDataSet(str1);
           if (txtpassword.Text.Length < 8)
            {
                  Response.Write("<script language='javascript'>alert('Password should be minimum 8 characters')</script>");
            }
             else if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Write("<script language='javascript'>alert('username already exists')</script>");
            }
            else
            {
                String str = "insert into registration(UserName, Password, UserType, Phone, Email)values('" + txtname.Text + "','" + txtpassword.Text + "','" + ddluser.SelectedItem.Text + "','" + txtphone.Text + "','" + txtemail.Text + "')";
                dl.DmlCmd(str);
                 ScriptManager.RegisterStartupScript(this,this.GetType(),"alert","alert('Successfully Registered');window.location='Login.aspx';",true);
               
                Response.Redirect("Login.aspx");
            }
        }
    
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtpassword.Text = "";
        txtconfirm1.Text = "";
        ddluser.SelectedIndex = 0;
        txtphone.Text = "";
        txtemail.Text = "";
    }
    
   

    
}