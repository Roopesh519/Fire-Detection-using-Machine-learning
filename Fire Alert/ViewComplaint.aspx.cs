using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ViewComplaint : System.Web.UI.Page
{
    DataLayer dl = new DataLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    public void fillgrid()
    {
        string str = "select * from complaint";
        DataSet ds = new DataSet();
        ds = dl.GetDataSet(str);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataMember = "table";
            GridView1.DataBind();

        }
    }
    protected void Btnapprove_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("chkdelete");
            if (chk.Checked)
            {
                Label lbl = (Label)GridView1.Rows[i].FindControl("lblId");
                int complaintno = int.Parse(lbl.Text);
                Label l1 = new Label();
                Label l2 = new Label();
                Label l3 = new Label();
                Label l4 = new Label();


                string str = "update complaint set status='Approve' where ComplaintNo='" + complaintno + "'";
                dl.DmlCmd(str);
                fillgrid();

            }
        }
        
    }
    protected void Btnreject_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("chkdelete");
            if (chk.Checked)
            {
                Label lbl = (Label)GridView1.Rows[i].FindControl("lblId");
                int complaintno = int.Parse(lbl.Text);
                Label l1 = new Label();
                Label l2 = new Label();
                Label l3 = new Label();
                Label l4 = new Label();

                string str = "update complaint set status='Rejected' where ComplaintNo='" + complaintno + "'";
                dl.DmlCmd(str);
            }
        }
    }
}