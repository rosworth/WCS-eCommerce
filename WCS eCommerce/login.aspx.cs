using System;

namespace WCS_eCommerce
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblLoginError.Visible = false;
            dsInfo dsUserLogin;
            //App_Code.dsLogin dsUserLogin;
            dsUserLogin = clsDataLayer.VerifyUser(Server.MapPath(@"App_Data\WCS.accdb"), txtUsername.Text, txtPassword.Text);
            // Add your comments here
            if (dsUserLogin.loginInfo.Count < 1)
            {
                lblLoginError.Visible = true;
                return;
            }
            else
            {
                Session["loginStatus"] = true;
                Session["customerID"] = clsDataLayer.GetCustomerID(Server.MapPath(@"App_Data\WCS.accdb"), txtUsername.Text, txtPassword.Text);
                Session["name"] = clsDataLayer.GetFirstName(Server.MapPath(@"App_Data\WCS.accdb"), Session["customerID"].ToString());
                Response.Redirect("myAccount.aspx");
            }
        }
    }
}