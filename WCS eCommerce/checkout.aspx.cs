using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace WCS_eCommerce
{
    public partial class checkout : System.Web.UI.Page
    {
        Dictionary<string, string> shirtColor = new Dictionary<string, string>();
        Dictionary<string, string> shirtSize = new Dictionary<string, string>();
        int subTotal;
        static int total;
        string sVar = "";
        Label temp = new Label();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["shirtColors"] != null && Session["shirtSize"] != null)
            {
                Dictionary<string, string> shirtColor = ((Dictionary<string, string>)Session["shirtColors"]);
                foreach (KeyValuePair<string, string> entry in shirtColor)
                {
                    Table1.FindControl(entry.Key).Visible = true;
                    temp = (Label)Table1.FindControl("color_" + entry.Key);
                    temp.Text = entry.Value;
                }

                Dictionary<string, string> shirtSize = ((Dictionary<string, string>)Session["shirtSize"]);
                foreach (KeyValuePair<string, string> entry in shirtSize)
                {
                    Table1.FindControl(entry.Key).Visible = true;
                    temp = (Label)Table1.FindControl("size_" + entry.Key);
                    temp.Text = entry.Value;
                }
            }

        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if (Session["shirtSize"] != null)
            {
                Dictionary<string, string> shirtSize = ((Dictionary<string, string>)Session["shirtSize"]);
                foreach (KeyValuePair<string, string> entry in shirtSize)
                {
                    temp = (Label)Table1.FindControl("size_" + entry.Key);
                    TextBox qty = (TextBox)Table1.FindControl("qty_" + entry.Key);
                    if (Table1.FindControl(entry.Key).Visible)
                    {
                        switch (temp.Text)
                        {
                            case "2X-Large":
                                subTotal = int.Parse(qty.Text) * 12;
                                total += subTotal;
                                break;
                            default:
                                subTotal = int.Parse(qty.Text) * 10;
                                total += subTotal;
                                break;
                        }
                    }
                }
            }
            sVar = String.Format("{0:c2}", total);
            totalDue.Text = sVar;
        }
    }
}