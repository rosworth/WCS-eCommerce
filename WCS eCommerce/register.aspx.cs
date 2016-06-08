using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WCS_eCommerce
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Visible = false;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //if ()
            //{
            if (clsDataLayer.RegisterUser(Server.MapPath(@"App_Data\WCS.accdb"), txtUsername.Text, txtPassword.Text, txtFirst.Text, txtLast.Text, txtAdd1.Text, txtAdd2.Text, txtCity.Text, ddlState.SelectedValue, txtZip.Text))
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