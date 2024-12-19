using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class EventManage : System.Web.UI.Page
    {
        Database db = Database.GetInstance();
        string request, comId, eventId;
        protected void Page_Load(object sender, EventArgs e)
        {
            request = Request.QueryString["request"];
            using (SqlConnection conn = db.GetConnection())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand($"SELECT * FROM view_EventWithCommunity WHERE EventID = {request}", conn))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            eventId = dr["EventID"].ToString();
                            lblEventName.Text = dr["EventName"].ToString();
                            lblInfo.Text = dr["Info"].ToString();
                            lblCity.Text = dr["City"].ToString();
                            comId = dr["CommunityID"].ToString();
                            txtName.Text = dr["EventName"].ToString();
                            txtDesc.Text = dr["Info"].ToString();
                        }
                    }
                }
                using (SqlCommand cmd = new SqlCommand($"SELECT Manager FROM view_CommunityWithManagerName WHERE CommunityID = {comId}", conn))
                {
                    lblManager.Text = cmd.ExecuteScalar().ToString();
                }
            }
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