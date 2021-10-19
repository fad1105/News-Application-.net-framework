using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News_Web_Application
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                Label1.Text = "Welcome " + Request.QueryString["name"];
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            string name = clickedButton.ID.ToString();
            Response.Redirect(String.Format("~/home.aspx?name={0}",name));


        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}