using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewFeedbacks : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uType"] == null || !Session["uType"].Equals("admin"))
            Response.Redirect("index.aspx");
    }
    protected void clickSearch(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from feedback where lower(name) Like '%" + TextBox1.Text + "%'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            Response.Write("<script type=\"text/javascript\">alert('Feedback Does Not Exist!');</script>");
        }
        else
        {
            Table1.Visible = true;
            // Total number of rows.
            int rowCnt = dt.Rows.Count;
            // Current row count.
            int rowCtr;
            // Total number of cells per row (columns).
            int cellCnt = 5;
            // Current cell counter
            int cellCtr;

            for (rowCtr = 1; rowCtr <= rowCnt; rowCtr++)
            {
                // Create new row and add it to the table.
                TableRow tRow = new TableRow();
                Table1.Rows.Add(tRow);
                for (cellCtr = 2; cellCtr <= cellCnt; cellCtr++)
                {
                    // Create a new cell and add it to the row.
                    TableCell tCell = new TableCell();
                    tCell.Text = dt.Rows[rowCtr - 1][cellCtr - 1].ToString();
                    tRow.Cells.Add(tCell);
                }
            }
        }
    }

    protected void clickViewAll(object sender, EventArgs e)
    {
        Table1.Visible = true;
        SqlDataAdapter da = new SqlDataAdapter("select * from feedback", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        // Total number of rows.
        int rowCnt = dt.Rows.Count;
        // Current row count.
        int rowCtr;
        // Total number of cells per row (columns).
        int cellCnt = 5;
        // Current cell counter
        int cellCtr;

        for (rowCtr = 1; rowCtr <= rowCnt; rowCtr++)
        {
            // Create new row and add it to the table.
            TableRow tRow = new TableRow();
            Table1.Rows.Add(tRow);
            for (cellCtr = 2; cellCtr <= cellCnt; cellCtr++)
            {
                // Create a new cell and add it to the row.
                TableCell tCell = new TableCell();
                tCell.Text = dt.Rows[rowCtr - 1][cellCtr - 1].ToString();
                tRow.Cells.Add(tCell);
            }
        }
    }
}