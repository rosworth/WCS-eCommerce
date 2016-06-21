using System;
using System.Collections.Generic;

namespace WCS_eCommerce
{
    public partial class ClassicCars : System.Web.UI.Page
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
            if (carColor1.SelectedIndex > 0 && carSize1.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("classics"))
                {
                    shirtColors.Add("classics", carColor1.SelectedValue);
                    shirtSizes.Add("classics", carSize1.SelectedValue);
                }
            }
            if (carColor2.SelectedIndex > 0 && carSize2.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("cobra"))
                {
                    shirtColors.Add("cobra", carColor2.SelectedValue);
                    shirtSizes.Add("cobra", carSize2.SelectedValue);
                }
            }
            if (carColor3.SelectedIndex > 0 && carSize3.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("deuce"))
                {
                    shirtColors.Add("deuce", carColor3.SelectedValue);
                    shirtSizes.Add("deuce", carSize3.SelectedValue);
                }
            }
            if (carColor4.SelectedIndex > 0 && carSize4.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("notOld"))
                {
                    shirtColors.Add("notOld", carColor4.SelectedValue);
                    shirtSizes.Add("notOld", carSize4.SelectedValue);
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