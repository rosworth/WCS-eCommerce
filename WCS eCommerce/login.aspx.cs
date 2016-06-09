using System;

namespace WCS_eCommerce
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["loginStatus"] = false;
            lblError.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblLoginError.Visible = false;
            dsInfo dsUserLogin;
            if (String.IsNullOrEmpty(txtLoginUsername.Text) && String.IsNullOrEmpty(txtLoginPassword.Text))
            {
                lblLoginError.Text = "Username/Password is empty";
                lblLoginError.Visible = true;
            }
            else
            {
                dsUserLogin = clsDataLayer.VerifyUser(Server.MapPath(@"App_Data\WCS.accdb"), txtLoginUsername.Text, txtLoginPassword.Text);
                if (dsUserLogin.loginInfo.Count < 1)
                {
                    lblLoginError.Text = "User not found";
                    lblLoginError.Visible = true;
                    return;
                }
                else
                {
                    Session["loginStatus"] = true;
                    Session["customerID"] = clsDataLayer.GetCustomerID(Server.MapPath(@"App_Data\WCS.accdb"), txtLoginUsername.Text, txtLoginPassword.Text);
                    Session["name"] = clsDataLayer.GetFirstName(Server.MapPath(@"App_Data\WCS.accdb"), Session["customerID"].ToString());
                    Response.Redirect("myAccount.aspx");
                }
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //if ()
            //{
            if (clsDataLayer.RegisterUser(Server.MapPath(@"App_Data\WCS.accdb"), txtLoginUsername.Text, txtLoginPassword.Text, txtFirst.Text, txtLast.Text, txtAdd1.Text, txtAdd2.Text, txtCity.Text, ddlState.SelectedValue, txtZip.Text))
            {
                Response.Redirect("myAccount.aspx");
            }
            else
            {
                lblError.Visible = true;
            }
            //}
        }
    }
}