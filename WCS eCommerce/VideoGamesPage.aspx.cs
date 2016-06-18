using System;
using System.Collections.Generic;

namespace WCS_eCommerce
{
    public partial class VideoGamesPage : System.Web.UI.Page
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
            if (gamesColor1.SelectedIndex > 0 && gamesSize1.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("creed"))
                {
                    shirtColors.Add("creed", gamesColor1.SelectedValue);
                    shirtSizes.Add("creed", gamesSize1.SelectedValue);
                }
            }
            if (gamesColor2.SelectedIndex > 0 && gamesSize2.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("battlefield"))
                {
                    shirtColors.Add("battlefield", gamesColor2.SelectedValue);
                    shirtSizes.Add("battlefield", gamesSize2.SelectedValue);
                }
            }
            if (gamesColor3.SelectedIndex > 0 && gamesSize3.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("cod"))
                {
                    shirtColors.Add("cod", gamesColor3.SelectedValue);
                    shirtSizes.Add("cod", gamesSize3.SelectedValue);
                }
            }
            if (gamesColor4.SelectedIndex > 0 && gamesSize4.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("division"))
                {
                    shirtColors.Add("division", gamesColor4.SelectedValue);
                    shirtSizes.Add("division", gamesSize4.SelectedValue);
                }
            }
            if (gamesColor5.SelectedIndex > 0 && gamesSize5.SelectedIndex > 0)
            {
                if (!shirtColors.ContainsKey("residentEvil"))
                {
                    shirtColors.Add("residentEvil", gamesColor5.SelectedValue);
                    shirtSizes.Add("residentEvil", gamesSize5.SelectedValue);
                }
            }
            Session["shirtSize"] = shirtSizes;
            Session["shirtColors"] = shirtColors;
            Response.Redirect("checkout.aspx");
        }

    }
}