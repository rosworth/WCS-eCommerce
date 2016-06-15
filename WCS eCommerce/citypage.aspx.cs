using System;

namespace WCS_eCommerce
{
    public partial class citypage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        //    if (!this.IsPostBack)
        //    {
        //        DataTable dt = new DataTable();
        //        dt.Columns.AddRange(new DataColumn[3] { new DataColumn("ImageName"),
        //        new DataColumn("ImageUrl"),
        //        new DataColumn("ZoomImageUrl")
        //});
        //        string[] filePaths = Directory.GetFiles(Server.MapPath("~/images/city/"));
        //        foreach (string filePath in filePaths)
        //        {
        //            string fileName = Path.GetFileName(filePath);
        //            dt.Rows.Add(fileName, "~/images/city/csmall/" + fileName, "~/images/city/clarge/" + fileName);
        //        }
        //        DataList1.DataSource = dt;
        //        DataList1.DataBind();
        //    }
        }
    }
}