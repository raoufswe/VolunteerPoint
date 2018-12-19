using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EventModify : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    public static int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["uType"] == null || !Session["uType"].Equals("admin") || !Session["uType"].Equals("organiser"))
         //   Response.Redirect("index.aspx");
        Panel1.Visible = false;
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from event where eventname= '" + txtSrch.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            Response.Write("<script type=\"text/javascript\">alert('Event Does Not Exist!');</script>");
        }
        else
        {
            Panel1.Visible = true;
            id = Convert.ToInt16(dt.Rows[0][0]);
            txtEventnm.Text = dt.Rows[0][1].ToString();
            txtDate.Text = dt.Rows[0][2].ToString();
            txtemail.Text = dt.Rows[0][3].ToString();
            txtOrganizer.Text = dt.Rows[0][4].ToString();
            txtContact.Text = dt.Rows[0][5].ToString();
            txtdscpt.Text = dt.Rows[0][6].ToString();
        }
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "update event set eventname ='" + txtEventnm.Text + "',eventdate ='" + txtDate.Text + "',email ='" + txtemail.Text + "',organizer ='" + txtOrganizer.Text + "',contact = '" + txtContact.Text + "',description ='" + txtdscpt.Text + "' where eventId = " + id;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script type=\"text/javascript\">alert('Event Edited.');</script>");
        Panel1.Visible = false;
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "delete from event where eventid = '" + id + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script type=\"text/javascript\">alert('Event Deleted!');</script>");
        Panel1.Visible = false;
    }
}