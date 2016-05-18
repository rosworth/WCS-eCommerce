using System;
using System.Data;
using System.Web.UI.WebControls;

namespace WCS_eCommerce
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, AuthenticateEventArgs e)
        {
            lblLoginError.Visible = false;
            App_Code.dsLogin dsUserLogin;
            dsUserLogin = clsDataLayer.VerifyUser(Server.MapPath("WCS.accdb"),
       txtUsername.Text, txtPassword.Text);
            // Add your comments here
            if (dsUserLogin.loginInfo.Count < 1)
            {
                lblLoginError.Visible = true;
                e.Authenticated = false;
                return;
            }
        }

    }
}