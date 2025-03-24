using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;

namespace Login_Form_ASP
{
    public partial class Login : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);

            string query = "Select * from Signup where username =@user and password=@pass";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user",UserTextBox.Text);
            cmd.Parameters.AddWithValue("@pass", PassTextBox.Text);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                Session["user"] = UserTextBox.Text;

                Response.Redirect("Dashboard.aspx");
                
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Successful')</script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed')</script>");
            }



            con.Close();




        }
    }
}