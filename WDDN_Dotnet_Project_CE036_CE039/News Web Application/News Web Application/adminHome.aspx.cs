using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace News_Web_Application
{
    public partial class adminHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            try
            {
                string filename = Path.GetFileName(image.PostedFile.FileName);
                image.SaveAs(Server.MapPath("~/Images/" + filename));
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Integrated Security=True";
                using (con)
                {
                    con.Open();
                    string insertQuery = "insert into News(Type,Date,Title,Image,Description) values (@type,@date,@title,@image,@description)";
                    SqlCommand cmd = new SqlCommand(insertQuery, con);
                    cmd.Parameters.AddWithValue("@type", type.Text);
                    cmd.Parameters.AddWithValue("@date", date.Text);
                    cmd.Parameters.AddWithValue("@title", title.Text);
                    cmd.Parameters.AddWithValue("@image", "~/Images/" + filename);
                    cmd.Parameters.AddWithValue("@description", description.Text);
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('News Added Successfully')", true);
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("error: " + ex.ToString());
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}