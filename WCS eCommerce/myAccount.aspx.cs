using System;

namespace WCS_eCommerce
{
    public partial class myAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loginStatus"] != null)
            {
                bool logged;
                logged = bool.Parse(Session["loginStatus"].ToString());
                if (!logged)
                {
                    Response.Redirect("login.aspx");
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}