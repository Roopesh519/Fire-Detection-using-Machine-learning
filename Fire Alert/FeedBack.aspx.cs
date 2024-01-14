using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FeedBack : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblname.Text = Session["uname"].ToString();
            lbldate.Text = DateTime.Now.ToString("dd/MM/yyyy");
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //string str = "insert into feedback(username,comment,date)values('" + lblname.Text + "','" + txtfeedback.Text + "','" + lbldate.Text + "')";
        //dl.DmlCmd(str);
    }
}