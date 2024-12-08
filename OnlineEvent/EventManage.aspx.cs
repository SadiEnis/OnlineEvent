using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class EventManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTicket_Click(object sender, EventArgs e)
        {

        }

        protected void btnInfo_Click(object sender, EventArgs e)
        {
            panelAttendee.Visible = false;
            panelInfo.Visible = true;
        }

        protected void btnAttendee_Click(object sender, EventArgs e)
        {
            panelInfo.Visible = false;
            panelAttendee.Visible = true;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (pnlEditEvent.Visible)
                pnlEditEvent.Visible = false;
            else
                pnlEditEvent.Visible = true;
        }
    }
}