using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Handson_Quiz1_Villamora
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(usernameTxt.Value == "admin" && passwordTxt.Value == "admin")
            {
                Response.Redirect("home.aspx");
            } else
            {
               usernameTxt.Style["border"] = "1px solid red";
               passwordTxt.Style["border"] = "1px solid red";
            }
        }
        protected void createAccountBtn_Click(object sender, EventArgs e)
        {
          
          Response.Redirect("signup.aspx");
          
        }
    }
}