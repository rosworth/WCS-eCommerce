using System;

namespace WCS_eCommerce
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["loginStatus"] = false;
            if (IsPostBack)
            {
                bool logged;
                logged = Convert.ToBoolean(Session["loginStatus"]);
                if (logged)
                {
                    nameHolder.Text = Session["name"].ToString();
                }
            }
        }
    }
}