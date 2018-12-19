using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EventCreate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["uType"] == null || !Session["uType"].Equals("admin") || !Session["uType"].Equals("organiser"))
         //   Response.Redirect("index.aspx");
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string query = "select count(*) from event where eventname ='" + txtEventName.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (check > 0)
            {
                Response.Write("<script type =\"text/javascript\">alert('Event Already available.');</script>");

            }
            else
            {
                string query1 = "insert into event (eventname, eventdate, email, organizer, contact, description) values (@eventnm,@eventdte,@email,@organizer,@contact,@descript)";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@eventnm", txtEventName.Text);
                cmd1.Parameters.AddWithValue("@eventdte", Calendar1.SelectedDate);
                cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd1.Parameters.AddWithValue("@organizer", txtOrganizer.Text);
                cmd1.Parameters.AddWithValue("@contact", txtContact.Text);
                cmd1.Parameters.AddWithValue("@descript", txtdcsp.Text);
                cmd1.ExecuteNonQuery();
                Response.Write("<script type=\"text/javascript\">alert('Registeration successful.');</script>");
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());

        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtEventName.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtOrganizer.Text = string.Empty;
        txtContact.Text = string.Empty;
        txtdcsp.Text = string.Empty;
    }
}