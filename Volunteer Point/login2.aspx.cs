using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string query = "select count(*) from users where email ='" + txtemail.Text + "' and password ='" + txtpwd.Text + "' and usertype ='organiser'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (check > 0)
            {
                SqlCommand cmdType = new SqlCommand("select id from users where email = '" + txtemail.Text + "' and usertype ='organiser'", con);
                int uID = Convert.ToInt32(cmdType.ExecuteScalar().ToString());
                Session["uID"] = uID;
                SqlCommand cmdType2 = new SqlCommand("select usertype from users where id = " + uID, con);
                string uType = cmdType2.ExecuteScalar().ToString().Replace(" ", "");
                Session["uType"] = uType;
                Response.Write("<script type=\"text/javascript\">alert('Login Successful.');</script>");
                Response.Redirect("myprofile2.aspx");
            }
            else
            {
                Response.Write("<script type=\"text/javascript\">alert('Login Unsuccessful.');</script>");
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}