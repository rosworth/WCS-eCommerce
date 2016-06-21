using System;
using System.Web.UI;

namespace WCS_eCommerce
{
    public partial class confirm : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["total"] != null)
            {
                totalDue.Text = Request.QueryString["total"];
            }
            if (Request.QueryString["payment"] != null)
            {
                paymentType.Text = Request.QueryString["payment"];
            }
            if (Request.QueryString["deposit"] == "0")
            {
                deposit.Visible = false;
            }
            else
            {
                depositAmt.Text = Request.QueryString["deposit"];
            }
        }
    }
}