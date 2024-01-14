using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ViewComplaintStatus : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void fillgrid()
    {
        string str = "select * from complaint where ComplaintNo='"+txtcomplaintno.Text+"'";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataMember = "table";
            GridView1.DataBind();

        }
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        fillgrid();
    }
}