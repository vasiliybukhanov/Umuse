using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication.Controls
{
    public partial class UserNavbar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropdownItem.Text = Session["Username"] != null ? Session["Username"].ToString() : "Static User";
            }
        }
    }
}