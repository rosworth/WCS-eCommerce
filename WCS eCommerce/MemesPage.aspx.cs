using System;
using System.Collections.Generic;

namespace WCS_eCommerce
{
    public partial class MemesPage : System.Web.UI.Page
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
            if (memeColor1.SelectedIndex > 0 && memeSize1.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("challenge"))
                {
                    shirtColors.Add("challenge", memeColor1.SelectedValue);
                    shirtSizes.Add("challenge", memeSize1.SelectedValue);
                }
            }
            if (memeColor2.SelectedIndex > 0 && memeSize2.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("confusion"))
                {
                    shirtColors.Add("confusion", memeColor2.SelectedValue);
                    shirtSizes.Add("confusion", memeSize2.SelectedValue);
                }
            }
            if (memeColor3.SelectedIndex > 0 && memeSize3.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("freeShirt"))
                {
                    shirtColors.Add("freeShirt", memeColor3.SelectedValue);
                    shirtSizes.Add("freeShirt", memeSize3.SelectedValue);
                }
            }
            if (memeColor4.SelectedIndex > 0 && memeSize4.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("harlemShake"))
                {
                    shirtColors.Add("harlemShake", memeColor4.SelectedValue);
                    shirtSizes.Add("harlemShake", memeSize4.SelectedValue);
                }
            }
            if (memeColor5.SelectedIndex > 0 && memeSize5.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("nike"))
                {
                    shirtColors.Add("nike", memeColor5.SelectedValue);
                    shirtSizes.Add("nike", memeSize5.SelectedValue);
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