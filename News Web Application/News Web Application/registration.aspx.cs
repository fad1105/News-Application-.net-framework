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
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void country_SelectedIndexChanged(object sender, EventArgs e)
        {
            state.Items.Clear();
            if(country.SelectedValue=="America")
            {
                state.Items.Add(new ListItem("Alabama"));
                state.Items.Add(new ListItem("California"));
                state.Items.Add(new ListItem("New York"));
                state.Items.Add(new ListItem("Ohio"));
                state.Items.Add(new ListItem("Washington"));
            }
            else if (country.SelectedValue == "Canada")
            {
                state.Items.Add(new ListItem("British Columbia"));
                state.Items.Add(new ListItem("Manitoba"));
                state.Items.Add(new ListItem("Ontario"));
                state.Items.Add(new ListItem("Quebec"));
                state.Items.Add(new ListItem("Saskatchewan"));
            }
            else if (country.SelectedValue == "China")
            {
                state.Items.Add(new ListItem("Anhui"));
                state.Items.Add(new ListItem("Guizhou"));
                state.Items.Add(new ListItem("Henan"));
                state.Items.Add(new ListItem("Jiangsu"));
                state.Items.Add(new ListItem("Shanxi"));
            }
            else if (country.SelectedValue == "India")
            {
                state.Items.Add(new ListItem("Andhra Pradesh"));
                state.Items.Add(new ListItem("Panjab"));
                state.Items.Add(new ListItem("Gujarat"));
                state.Items.Add(new ListItem("Maharashtra"));
                state.Items.Add(new ListItem("Karnataka"));
            }
            else if (country.SelectedValue == "Pakistan")
            {
                state.Items.Add(new ListItem("Chitral"));
                state.Items.Add(new ListItem("Islamabad"));
                state.Items.Add(new ListItem("Lahore"));
                state.Items.Add(new ListItem("Peshawar"));
                state.Items.Add(new ListItem("Sindh"));
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string data = args.Value; 
            args.IsValid = false; 
            if (data.Length < 6 && data.Length > 14) 
                return; 
            bool l = false, u = false, num = false; 
            foreach (char c in data) 
            { 
                if (char.IsUpper(c)) 
                { 
                    u = true; 
                } 
                else if (char.IsLower(c)) 
                { 
                    l = true; 
                } 
                else if (char.IsDigit(c)) 
                { 
                    num = true; 
                } 
                if (u && l && num) 
                { 
                    args.IsValid = true; 
                } 
            }
        }

        protected void register_Click(object sender, EventArgs e)
        {
            Boolean isRegistered = false;
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Integrated Security=True";
                using(con)
                {
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.Connection = con;
                    cmd1.CommandText = "SELECT Id FROM Users WHERE Email ='" + email.Text + "'";
                    SqlDataReader rdr = cmd1.ExecuteReader();
                    if(rdr.Read())
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Email is already Registered')", true);
                        isRegistered = true;
                    }
                    rdr.Close();
                    if(!isRegistered)
                    {
                        string insertQuery = "insert into Users(fName,lName,Email,Password,Country,State) values (@fname,@lname,@email,@password,@country,@state)";
                        SqlCommand cmd = new SqlCommand(insertQuery, con);
                        cmd.Parameters.AddWithValue("@fname", fname.Text);
                        cmd.Parameters.AddWithValue("@lname", lname.Text);
                        cmd.Parameters.AddWithValue("@email", email.Text);
                        cmd.Parameters.AddWithValue("@password", password.Text);
                        cmd.Parameters.AddWithValue("@country", country.Text);
                        cmd.Parameters.AddWithValue("@state", state.Text);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registered Successfully')", true);
                        Response.Redirect("login.aspx");
                    }

                }
            }
            catch(Exception ex)
            {
                Response.Write("error: " + ex.ToString());
            }
        }
    }
}