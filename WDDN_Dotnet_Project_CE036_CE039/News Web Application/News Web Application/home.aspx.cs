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
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string name = Request.QueryString["name"];

                try
                {
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Integrated Security=True";
                    using (con)
                    {
                        con.Open();
                        SqlCommand cmd1 = new SqlCommand();
                        cmd1.Connection = con;
                        
                        SqlDataAdapter da = new SqlDataAdapter("SELECT Id,Type,Date,Image,Title FROM News WHERE Type ='" + name + "' AND Date >= DATEADD(day,-2,GETDATE())", con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                        con.Close();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.ToString());
                }
            }
        }
        protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName != "Read") return;
            int id = Convert.ToInt32(e.CommandArgument);
            Response.Redirect(String.Format("~/News.aspx?id={0}",id));
        }
    }
}