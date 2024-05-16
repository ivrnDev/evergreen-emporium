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
    public partial class home1 : System.Web.UI.Page
    {
        private OracleConnection GetOracleConnection()
        {
            string connectionString = "User Id=EVERGREEN;Password=evergreen;Data Source=localhost:1521/xepdb1;";
            return new OracleConnection(connectionString);
        }

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

            confirmationPanel.Visible = false;

            using (OracleConnection conn = GetOracleConnection())
            {
                conn.Open();
                OracleCommand cmd = new OracleCommand("SELECT * FROM Product", conn);

                using (OracleDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Panel panel = new Panel()
                        {
                            CssClass = "product-container"
                        };
                        Image img = new Image()
                        {
                            ImageUrl = reader["image_link"].ToString(),
                            AlternateText = "Product Image",
                            CssClass = "product-image"
                        };
                        Label productName = new Label()
                        {
                            Text = reader["product_name"].ToString(),
                            CssClass = "product-name"
                        };
                        Label amount = new Label()
                        {
                            Text = string.Format("₱ {0:N2}", Convert.ToDecimal(reader["amount"])),
                            CssClass = "product-amount"
                        };
                        LinkButton btn = new LinkButton()
                        {
                            Text = "Buy",
                            CommandArgument = reader["product_id"].ToString(),
                            CssClass = "buy-button"
                        };
                        btn.Click += new EventHandler(this.Product_Click);
                        panel.Controls.Add(img);
                        panel.Controls.Add(productName);
                        panel.Controls.Add(amount);
                        panel.Controls.Add(btn);
                        productPanel.Controls.Add(panel);
                    }

                }
            }
        }
        protected void Product_Click(object sender, EventArgs e)
        {
            LinkButton btn = sender as LinkButton;
            if (btn != null)
            {
                Session["pendingProductId"] = btn.CommandArgument;
                confirmationPanel.Visible = true;
            }
        }
        protected void ConfirmButton_Click(object sender, EventArgs e)
        {
            string productId = Session["pendingProductId"] as string;
            using (OracleConnection conn = GetOracleConnection())
            {
                conn.Open();
                try
                {
                    OracleCommand cmd = new OracleCommand("INSERT INTO Transaction (transaction_id, user_id, product_id, transaction_date) VALUES (transaction_seq.NEXTVAL, :userId, :productId, :timestamp)", conn);
                    cmd.Parameters.Add("userId", OracleDbType.Int32).Value = Get_UserID(Session["Username"].ToString());
                    cmd.Parameters.Add("productId", OracleDbType.Int32).Value = productId;
                    cmd.Parameters.Add("timestamp", OracleDbType.Date).Value = DateTime.Now;

                    cmd.ExecuteNonQuery();
                    Response.Redirect("/redirect/order-success.aspx");
                }
                catch (OracleException oe)
                {
                    Debug.WriteLine("Oracle error code: " + oe.Number);
                    Debug.WriteLine("Oracle error message: " + oe.Message);
                }
            }
            Session.Remove("pendingProductId");
            confirmationPanel.Visible = false;
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Session.Remove("pendingProductId");
            confirmationPanel.Visible = false;
        }

        protected int Get_UserID(string username)
        {
            using (OracleConnection conn = GetOracleConnection())
            {
                conn.Open();
                OracleCommand cmd = new OracleCommand("SELECT user_id from Customer WHERE user_name = :username", conn);
                cmd.Parameters.Add("username", OracleDbType.Varchar2).Value = username;
                object result = cmd.ExecuteScalar();
                if (result != null)
                {
                    return Convert.ToInt32(result);
                }
                else
                {
                    return -1; 
                }
            }
               
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Clear(); 
            Session.Abandon();
            Response.Redirect("/landing.aspx");
        }

    }
}