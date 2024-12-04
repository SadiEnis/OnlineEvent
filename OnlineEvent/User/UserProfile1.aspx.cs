using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent.User
{
    public partial class UserProfile1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            if (pnlEditProfile.Visible)
                pnlEditProfile.Visible = false;
            else 
                pnlEditProfile.Visible = true;
        }
    }
}