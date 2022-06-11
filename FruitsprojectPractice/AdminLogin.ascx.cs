using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FruitsprojectPractice
{
    public partial class AdminLogin : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DBSeason"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("default.aspx");

            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from adminData where UserName = @uname and Password  = @upass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@uname", txt_user.Text);
            cmd.Parameters.AddWithValue("@upass", txt_password.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["username"] = txt_user.Text;
                Response.Redirect("default.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            con.Close();
        }
    }
}