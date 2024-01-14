using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;

public partial class forgotpassword : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string str = "";
        str = "select * from registration where UserName='" + txtuname.Text + "'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string name = txtuname.Text;
            string email = txtemail.Text;
            Random r = new Random();
            string s = r.NextDouble().ToString();
            s = s.Substring(3, 8);
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.Port = 587;
            client.EnableSsl = true;
            client.Timeout = 100000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("", "");
            MailMessage msg = new MailMessage();
            msg.To.Add(email);
            msg.From = new MailAddress("");

            msg.Subject = "forgot password";
            msg.Body = "Hello " + name + "  your new passsword is = " + s + "";
            client.Send(msg);
            str = "update registration set Password='" + s + "' where UserName='" + txtuname.Text + "'";
            dl.DmlCmd(str);


            Response.Redirect("login.aspx");
        }
        else
        {
            Response.Write("<script language='javaScript'>alert('Invalid user')</script>");
        }
    }
}