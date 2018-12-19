using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void register_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string query = "select count(*) from users where email ='" + txtemail.Text + "' and usertype ='organiser'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (check > 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Email already exist.');</script>");
            }
            else
            {
                string query1 = "insert into Users (fullname, email, password, Bmonth, Bdate, Byear, gender, mob, usertype)" +
                    " values (@fullname, @email, @password, @Bmonth, @Bdate, @Byear, @gender, @mob, @usertype)";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@fullname", txtname.Text);
                cmd1.Parameters.AddWithValue("@email", txtemail.Text);
                cmd1.Parameters.AddWithValue("@password", txtpwd.Text);
                cmd1.Parameters.AddWithValue("@Bmonth", lBmonth.SelectedItem.Value);
                cmd1.Parameters.AddWithValue("@Bdate", txtBdate.Text);
                cmd1.Parameters.AddWithValue("@Byear", txtByear.Text);
                cmd1.Parameters.AddWithValue("@gender", lgender.SelectedItem.Value);
                cmd1.Parameters.AddWithValue("@mob", txtphone.Text);
                cmd1.Parameters.AddWithValue("@usertype", "organiser");
                cmd1.ExecuteNonQuery();
                Response.Write("<script type=\"text/javascript\">alert('Registration Successful.');</script>");
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}