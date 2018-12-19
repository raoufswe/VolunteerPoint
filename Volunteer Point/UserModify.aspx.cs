using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserModify : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uType"] == null || !Session["uType"].Equals("admin"))
            Response.Redirect("index.aspx");
        Panel1.Visible = false;
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from users where email = '" + txtSrch.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            Response.Write("<script type=\"text/javascript\">alert('User Does Not Exist!');</script>");
        }
        else
        {
            Panel1.Visible = true;
            txtuid.Text = dt.Rows[0][0].ToString();
            txtname.Text = dt.Rows[0][1].ToString();
            txtEmail.Text = dt.Rows[0][2].ToString();
            txtpwd.Text = dt.Rows[0][3].ToString();
            txtBmonth.Text = dt.Rows[0][4].ToString();
            txtBdate.Text = dt.Rows[0][5].ToString();
            txtByear.Text = dt.Rows[0][6].ToString();
            txtGender.Text = dt.Rows[0][7].ToString();
            txtContact.Text = dt.Rows[0][8].ToString();
            txtutype.Text = dt.Rows[0][9].ToString();
            id = Convert.ToInt32(dt.Rows[0][0]);
        }
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "update users set fullname ='" + txtname.Text + "',email ='" + txtEmail.Text + "',password ='" + txtpwd.Text + "',Bdate =" + Convert.ToInt32(txtBdate.Text) + ",Bmonth =" + Convert.ToInt32(txtBmonth.Text) + ",Byear =" + Convert.ToInt32(txtByear.Text) + ",gender ='" + txtGender.Text + "',mob ='" + txtContact.Text + "',usertype ='" + txtutype.Text + "' where id=" + id; ;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script type=\"text/javascript\">alert('User Edited.');</script>");
        Panel1.Visible = false;
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "delete from users where id = " + id;
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script type=\"text/javascript\">alert('User Deleted!');</script>");
        Panel1.Visible = false;
    }
}