using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BusDetails : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        string str = "insert into busdetails( busno, chasisno, wheelbase, battery,watertankcapacity, watertankmaterial, manhole, pumptype, pumpdischarge, delivery, make, overalllength, overallwidth, overallheight, bodyroof, bodydoortype, bodylocks)values('" + txtbusno.Text + "','" + txtchasisno.Text + "','" + txtwheelbase.Text + "','" + txtbattery.Text + "','" + txtwatertankcapacity.Text + "','" + txtwatertankmaterial.Text + "','" + txtmanhole.Text + "','" + txtpumptype.Text + "','" + txtpumpdischarge.Text + "','" + txtdelivery.Text + "','" + ddlmake.SelectedItem.Text + "','" + txtoveralllength.Text + "','" + txtoverallwidth.Text + "','" + txtoverallheight.Text + "','" + txtbodyroof.Text + "','" + txtdoortype.Text + "','" + txtbodylocks.Text + "')";
        dl.DmlCmd(str);
        Response.Write("<script language='javaScript'>alert('Bus Details Are Saved....')</script>");
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtbattery.Text = "";
        txtbodylocks.Text = "";
        txtbodyroof.Text = "";
        txtbusno.Text = "";
        txtchasisno.Text = "";
        txtdelivery.Text = "";
        txtdoortype.Text = "";
        txtmanhole.Text = "";
        txtoverallheight.Text = "";
        txtoveralllength.Text = "";
        txtoverallwidth.Text = "";
        txtpumpdischarge.Text = "";
        txtpumptype.Text="";
        txtwatertankcapacity.Text = "";
        txtwatertankmaterial.Text = "";
        txtwheelbase.Text = "";
        

    }
}