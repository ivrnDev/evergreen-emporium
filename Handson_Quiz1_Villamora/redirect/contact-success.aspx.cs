using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvergreenEmporium_group11.redirect
{
    public partial class contact_success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void returnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("/landing.aspx");
        }
    }
}