using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Web.UI.HtmlControls.HtmlAnchor b = (System.Web.UI.HtmlControls.HtmlAnchor)this.Page.Master.FindControl("nhome");
        b.Attributes["class"] = "nav-link active";
    }
}