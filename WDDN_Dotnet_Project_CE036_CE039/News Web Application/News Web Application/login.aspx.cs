using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace News_Web_Application
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (email.Text == "admin@gmail.com" && password.Text == "Admin1")
            {
                Response.Redirect("adminHome.aspx");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Integrated Security=True";
                    using (con)
                    {
                        con.Open();
                        SqlCommand cmd1 = new SqlCommand();
                        cmd1.Connection = con;
                        cmd1.CommandText = "SELECT Email,Password FROM Users WHERE Email ='" + email.Text + "'";
                        SqlDataReader rdr = cmd1.ExecuteReader();
                        if (rdr.Read())
                        {
                            string p1 = Convert.ToString((rdr["Password"]));
                            string p2 = Convert.ToString(password.Text);
                            p1 = p1.Trim();
                            p2 = p2.Trim();
                            if (p1 == p2)
                            {
                                Response.Redirect(String.Format("~/index.aspx?name={0}", email.Text));
                            }
                            else
                            {
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect Password')", true);
                            }
                        }
                        else
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect Email Address')",true);
                        }
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