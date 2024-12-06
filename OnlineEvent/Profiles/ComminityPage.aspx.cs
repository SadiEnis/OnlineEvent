using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent.Profiles
{
    public partial class ComminityPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInfo_Click(object sender, EventArgs e)
        {
            panelEvents.Visible = false;
            panelMembers.Visible = false;
            panelInfo.Visible = true;
        }
        protected void btnEvents_Click(object sender, EventArgs e)
        {
            panelInfo.Visible = false;
            panelMembers.Visible = false;
            panelEvents.Visible = true;
        }
        protected void btnMembers_Click(object sender, EventArgs e)
        {
            panelInfo.Visible = false;
            panelEvents.Visible = false;
            panelMembers.Visible = true;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if(pnlEditComm.Visible == false)
            {
                pnlEditComm.Visible = true;
            }
            else
            {
                pnlEditComm.Visible = false;
            }
        }

        protected void txtDesc_TextChanged(object sender, EventArgs e)
        {

        }
    }
}