using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvergreenEmporium_group11.user
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                userLabel.Text = "Welcome, " + Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("/login.aspx");
            }
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("/landing.aspx");
        }
        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            // Get the values from the form
            string name = nameInput.Text;
            string address = addressInput.Text;
            string gender = RadioButtonList1.SelectedItem.Value;
            string concerns = string.Join(", ", CheckBoxList1.Items.Cast<ListItem>().Where(i => i.Selected).Select(i => i.Value));
            string comment = TextArea1.Value;

            string connectionString = "User Id=EVERGREEN;Password=evergreen;Data Source=localhost:1521/xepdb1;";

            using (OracleConnection conn = new OracleConnection(connectionString))
            {
                conn.Open();

                string sql = "INSERT INTO Contact (contact_id, customer_name, address, gender, customer_concern, customer_comment) VALUES (contact_seq.NEXTVAL, :paramName, :paramAddress, :paramGender, :paramConcerns, :paramComment)";
                using (OracleCommand cmd = new OracleCommand(sql, conn))
                {


                    cmd.Parameters.Add("paramName", OracleDbType.Varchar2).Value = name;
                    cmd.Parameters.Add("paramAddress", OracleDbType.Varchar2).Value = address;
                    cmd.Parameters.Add("paramGender", OracleDbType.Varchar2).Value = gender;
                    cmd.Parameters.Add("paramConcerns", OracleDbType.Varchar2).Value = concerns;
                    cmd.Parameters.Add("paramComment", OracleDbType.Varchar2).Value = comment;


                    try
                    {
                        cmd.ExecuteNonQuery();
                        Response.Redirect("/redirect/contact-success.aspx");
                        nameInput.Text = "";
                        addressInput.Text = "";
                        TextArea1.InnerText = "";
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

}