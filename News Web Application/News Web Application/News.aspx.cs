using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Services;
using System.Configuration;
using System.Data;

namespace News_Web_Application
{
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                int idx = Convert.ToInt32(Request.QueryString["id"]);
                //Label1.Text = id.ToString();
                try
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Integrated Security=True";
                    using (con)
                    {
                        con.Open();
                        SqlCommand cmd1 = new SqlCommand();
                        cmd1.Connection = con;
                        cmd1.CommandText = "SELECT Image,Description,Title FROM News WHERE Id =" + idx ;
                        SqlDataReader rdr = cmd1.ExecuteReader();
                        rdr.Read();
                        title.Text = Convert.ToString(rdr["Title"]);
                        content.Text = Convert.ToString(rdr["Description"]);
                        Image1.ImageUrl =  Convert.ToString(rdr["Image"]);
                        
                        con.Close();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.ToString());
                }

            }
        }
    }
}