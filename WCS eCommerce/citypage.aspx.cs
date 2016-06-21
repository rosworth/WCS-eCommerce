using System;
using System.Collections.Generic;

namespace WCS_eCommerce
{
    public partial class citypage : System.Web.UI.Page
    {
        Dictionary<string, string> shirtColors;
        Dictionary<string, string> shirtSizes;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void cartAdd_Click(object sender, EventArgs e)
        {
            shirtColors = (Session["shirtColors"] as Dictionary<string, string>) ?? new Dictionary<string, string>();
            shirtSizes = (Session["shirtSize"] as Dictionary<string, string>) ?? new Dictionary<string, string>();
            if (cityColor1.SelectedIndex > 0 && citySize1.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("chicago"))
                {
                    shirtColors.Add("chicago", cityColor1.SelectedValue);
                    shirtSizes.Add("chicago", citySize1.SelectedValue);
                }
            }
            if (cityColor2.SelectedIndex > 0 && citySize2.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("houston"))
                {
                    shirtColors.Add("houston", cityColor2.SelectedValue);
                    shirtSizes.Add("houston", citySize2.SelectedValue);
                }
            }
            if (cityColor3.SelectedIndex > 0 && citySize3.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("la"))
                {
                    shirtColors.Add("la", cityColor3.SelectedValue);
                    shirtSizes.Add("la", citySize3.SelectedValue);
                }
            }
            if (cityColor4.SelectedIndex > 0 && citySize4.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("miami"))
                {
                    shirtColors.Add("miami", cityColor4.SelectedValue);
                    shirtSizes.Add("miami", citySize4.SelectedValue);
                }
            }
            if (cityColor5.SelectedIndex > 0 && citySize5.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("ny"))
                {
                    shirtColors.Add("ny", cityColor5.SelectedValue);
                    shirtSizes.Add("ny", citySize5.SelectedValue);
                }
            }
            if (shirtSizes.Count >= 1 && shirtColors.Count >= 1)
            {
                Session["shirtSize"] = shirtSizes;
                Session["shirtColors"] = shirtColors;
            }
            Response.Redirect("checkout.aspx");
        }
    }
}