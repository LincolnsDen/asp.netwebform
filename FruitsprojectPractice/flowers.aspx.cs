using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FruitsprojectPractice
{
    public partial class flowers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnupload_Click(object sender, EventArgs e)
        {
            FileUpload fl = (FileUpload)DetailsView1.FindControl("FileUpload1");
            Image img = (Image)DetailsView1.FindControl("Image1");
            string fname = System.IO.Path.GetFileName(fl.PostedFile.FileName);
            string localName = Server.MapPath("~/Img/") + fname;
            fl.SaveAs(localName);
            img.ImageUrl = "~/Img/" + fname;
        }

      
    }
}                                                                                                                                                                                                                                                                                                              