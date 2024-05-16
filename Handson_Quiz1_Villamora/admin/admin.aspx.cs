using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

namespace EvergreenEmporium_group11.admin
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
     
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile && !string.IsNullOrEmpty(productNameInput.Text) && !string.IsNullOrEmpty(amountInput.Text))
            {
                string imgName = FileUpload1.FileName;
                string imgPath = "/Items/" + DateTime.Now.ToString("yyyyMMddHHmmss") + imgName;

                using (OracleConnection conn = new OracleConnection("User Id=EVERGREEN;Password=evergreen;Data Source=localhost:1521/xepdb1;"))
                {
                    conn.Open();
                    OracleCommand cmd = new OracleCommand("INSERT INTO Product (product_id, product_name, image_link, amount) VALUES (product_seq.NEXTVAL, :productName, :imageLink, :amount)", conn);
                    cmd.Parameters.Add("productName", OracleDbType.Varchar2).Value = productNameInput.Text;
                    cmd.Parameters.Add("imageLink", OracleDbType.Varchar2).Value = imgPath;
                    cmd.Parameters.Add("amount", OracleDbType.Int32).Value = int.Parse(amountInput.Text);
                    try
                    {
                        cmd.ExecuteNonQuery();
                        FileUpload1.SaveAs(Server.MapPath(imgPath));
                        productNameInput.Text = "";
                        amountInput.Text = "";
                        Panel2.Visible = true;
                        GridView2.DataBind();
                    }
                    catch (OracleException oex)
                    {
                        Debug.WriteLine("Error:" + oex);
                    }
                }
            }    
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}