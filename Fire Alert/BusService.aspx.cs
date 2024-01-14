using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BusService : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillddlbusno();
        }
    }
    public void fillddlbusno()
    {
        String str = "select * from busdetails";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        ddlbusno.DataSource = ds;
        ddlbusno.DataTextField = "busno";
        ddlbusno.DataValueField = "busno";
        ddlbusno.DataBind();
        ddlbusno.Items.Insert(0, "--Select Any--");
       
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        string str = "insert into busservice(Busno, date, serviceDescription, Amount)values('" + ddlbusno.SelectedItem.Text + "','" + txtDate.Text + "','" + txtServiceDesc.Text + "','" + txtAmount.Text + "')";
        dl.DmlCmd(str);
        Response.Write("<script language='javaScript'>alert('Your Bus Service Is Saved....')</script>");
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtAmount.Text = "";
        txtDate.Text = "";
        txtServiceDesc.Text = "";
    }
}