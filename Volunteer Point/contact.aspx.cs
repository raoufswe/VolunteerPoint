using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Web.UI.HtmlControls.HtmlAnchor b = (System.Web.UI.HtmlControls.HtmlAnchor)this.Page.Master.FindControl("ncont");
        b.Attributes["class"] = "nav-link active";
    }

    protected void submit(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string query1 = "insert into feedback (name, phone, email, msg) values (@name,@phone,@email,@msg)";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@name", txtname.Text);
            cmd1.Parameters.AddWithValue("@phone", txtphone.Text);
            cmd1.Parameters.AddWithValue("@email", txtemail.Text);
            cmd1.Parameters.AddWithValue("@msg", txtmsg.Text);
            cmd1.ExecuteNonQuery();
            Response.Write("<script type=\"text/javascript\">alert('Feedback submitted.');</script>");
            
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());

        }
    }
}