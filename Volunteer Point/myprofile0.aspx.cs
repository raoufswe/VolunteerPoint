using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myprofile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uType"] == null || !Session["uType"].Equals("admin"))
            Response.Redirect("index.aspx");
        Panel1.Visible = true;
        if (!Page.IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from users where id = " + Session["uID"], con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            txtname.Text = dt.Rows[0][1].ToString();
            txtEmail.Text = dt.Rows[0][2].ToString();
            txtpwd.Text = dt.Rows[0][3].ToString();
            txtBmonth.Text = dt.Rows[0][4].ToString();
            txtBdate.Text = dt.Rows[0][5].ToString();
            txtByear.Text = dt.Rows[0][6].ToString();
            txtGender.Text = dt.Rows[0][7].ToString();
            txtContact.Text = dt.Rows[0][8].ToString();
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "update users set fullname ='" + txtname.Text + "',email ='" + txtEmail.Text + "',password ='" + txtpwd.Text + "',Bdate =" + Convert.ToInt32(txtBdate.Text) + ",Bmonth =" + Convert.ToInt32(txtBmonth.Text) + ",Byear =" + Convert.ToInt32(txtByear.Text) + ",gender ='" + txtGender.Text + "',mob ='" + txtContact.Text + "' where id=" + Session["uID"]; ;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}