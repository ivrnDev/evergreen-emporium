using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Diagnostics;

namespace EvergreenEmporium_group11
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void createAccountBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void signupBtn(object sender, EventArgs e)
        {
            using (OracleConnection conn = new OracleConnection("User Id=EVERGREEN;Password=evergreen;Data Source=localhost:1521/xepdb1;"))
            {
                conn.Open();
                OracleCommand cmd = new OracleCommand("INSERT INTO Customer (user_id, user_name, password) VALUES (customer_seq.NEXTVAL, :paramUsername, :paramPassword)", conn);
                cmd.Parameters.Add("paramUsername", OracleDbType.Varchar2).Value = usernameInput.Text;
                cmd.Parameters.Add("paramPassword", OracleDbType.Varchar2).Value = passwordInput.Text;

                try
                {
                    cmd.ExecuteNonQuery();
                    Session["Username"] = usernameInput.Text;
                    Response.Redirect("/user/home.aspx");
                }
                catch (OracleException oex)
                {

                    Debug.WriteLine("Oracle error code: " + oex.Number);
                    Debug.WriteLine("Oracle error message: " + oex.Message);

                }
                catch (Exception ex)
                {
                    Debug.WriteLine("Error: " + ex.Message);

                }
            }
        }
        }
}