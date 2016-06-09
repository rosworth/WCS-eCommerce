using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WCS_eCommerce
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["loginStatus"] = false;
            bool logged;
            if (Session["loginStatus"] != null)
            {
                logged = Convert.ToBoolean(Session["loginStatus"]);
                if (logged)
                { nameHolder.Text = Session["name"].ToString(); }
            }

        }
    }
}