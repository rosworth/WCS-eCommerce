using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace WCS_eCommerce
{
    public partial class VideoGamesPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[3] { new DataColumn("ImageName"),
                new DataColumn("ImageUrl"),
                new DataColumn("ZoomImageUrl")
        });
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/images/video games/"));
                foreach (string filePath in filePaths)
                {
                    string fileName = Path.GetFileName(filePath);
                    dt.Rows.Add(fileName, "~/images/cartoons/video games/vgsmall/" + fileName, "~/images/video games/vglarge/" + fileName);
                }
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }


            {




            }

        }
    }
}