using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

namespace EvergreenEmporium_group11
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            usernameInput.Focus();
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }


        protected void createAccountBtn_Click(object sender, EventArgs e)
        {
          
          Response.Redirect("signup.aspx");
          
        }

        protected void signInBtn_Click(object sender, EventArgs e)
        { 
            if (usernameInput.Text == "admin" && passwordInput.Text == "admin")
            {
                Response.Redirect("/admin/admin.aspx");
                return;
            }
            if (Authenticate(usernameInput.Text, passwordInput.Text))
            {
                message.Text = "Login successful!";
                Session["Username"] = usernameInput.Text;  // Store username in session state
                Response.Redirect("user/home.aspx");
            }
            else
            {
                message.Visible = true;
                message.Text = "Invalid Username or Password!";
                usernameInput.BorderColor = System.Drawing.Color.Red;
                passwordInput.BorderColor = System.Drawing.Color.Red;
                usernameInput.Text = "";
                passwordInput.Text = "";
                usernameInput.Focus();
            }

        }

        private bool Authenticate(string username, string password)
        {
            using (OracleConnection conn = new OracleConnection("User Id=EVERGREEN;Password=evergreen;Data Source=localhost:1521/xepdb1;"))
            {
                OracleCommand cmd = new OracleCommand("SELECT COUNT(*) FROM Customer WHERE user_name = :username AND password = :password", conn);
                cmd.Parameters.Add("username", OracleDbType.Varchar2).Value = username;
                cmd.Parameters.Add("password", OracleDbType.Varchar2).Value = password;

                try
                {
                    conn.Open();
                    int userCount = Convert.ToInt32(cmd.ExecuteScalar());
                    return userCount > 0;
                }
                catch (OracleException ex)
                {
                    Console.WriteLine("Failed to execute: " + ex.Message);
                    return false;
                }

            }




        }
    }
}