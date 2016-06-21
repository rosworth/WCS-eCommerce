using System;
using System.Collections.Generic;

namespace WCS_eCommerce.Catalog_pages
{
    public partial class WebForm1 : System.Web.UI.Page
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
            if (cartoonColor1.SelectedIndex > 0 && cartoonSize1.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("americanDad"))
                {
                    shirtColors.Add("americanDad", cartoonColor1.SelectedValue);
                    shirtSizes.Add("americanDad", cartoonSize1.SelectedValue);
                }
            }
            if (cartoonColor2.SelectedIndex > 0 && cartoonSize2.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("boondocks"))
                {
                    shirtColors.Add("boondocks", cartoonColor2.SelectedValue);
                    shirtSizes.Add("boondocks", cartoonSize2.SelectedValue);
                }
            }
            if (cartoonColor3.SelectedIndex > 0 && cartoonSize3.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("familyGuy"))
                {
                    shirtColors.Add("familyGuy", cartoonColor3.SelectedValue);
                    shirtSizes.Add("familyGuy", cartoonSize3.SelectedValue);
                }
            }
            if (cartoonColor4.SelectedIndex > 0 && cartoonSize4.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("southPark"))
                {
                    shirtColors.Add("southPark", cartoonColor4.SelectedValue);
                    shirtSizes.Add("southPark", cartoonSize4.SelectedValue);
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