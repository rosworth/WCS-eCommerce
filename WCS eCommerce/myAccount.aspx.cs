using System;

namespace WCS_eCommerce
{
    public partial class myAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
}