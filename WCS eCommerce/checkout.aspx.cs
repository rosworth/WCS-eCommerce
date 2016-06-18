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
        int total;
        string sVar = "";
        Label temp = new Label();
        TextBox txt = new TextBox();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["shirtColors"] != null && Session["shirtSize"] != null)
            {
                Dictionary<string, string> shirtColor = ((Dictionary<string, string>)Session["shirtColors"]);
                foreach (KeyValuePair<string, string> entry in shirtColor)
                {
                    Table1.FindControl(entry.Key).Visible = true;
                    temp = (Label)Table1.FindControl("color_" + entry.Key);
                    txt = (TextBox)Table1.FindControl("qty_" + entry.Key);
                    validator.ControlToValidate = txt.ID;
                    temp.Text = entry.Value;
                    txt.ValidationGroup = "checkNumber";
                }
                Dictionary<string, string> shirtSize = ((Dictionary<string, string>)Session["shirtSize"]);
                foreach (KeyValuePair<string, string> entry in shirtSize)
                {
                    temp = (Label)Table1.FindControl("size_" + entry.Key);
                    temp.Text = entry.Value;
                }
            }
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["loginStatus"]))
            {
                DateTime date = DateTime.Now;
                double deposit = 0;
                if (paymentOption.SelectedIndex == 0)
                {
                    deposit = total / 10;
                }
                if (clsDataLayer.PlaceOrder(Server.MapPath(@"App_Data\WCS.accdb"), Session["customerID"].ToString(), date, deposit, total, paymentOption.SelectedValue, "Pending"))
                {
                    Response.Redirect("confirm.aspx?total=" + totalDue.Text + "&payment=" + paymentOption.SelectedValue + "&deposit=" + deposit.ToString());
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
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
                        validator.Validate();
                        if (validator.IsValid)
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
            }
            sVar = String.Format("{0:c2}", total);
            totalDue.Text = sVar;
        }
    }
}