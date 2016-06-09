using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WCS_eCommerce
{
    public partial class myAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool logged;
                logged = bool.Parse(Session["loginStatus"].ToString());
                if (!logged)
                {
                    Response.Redirect("login.aspx");
                }
        }
    }
}