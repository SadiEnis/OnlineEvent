using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class EventDetail : System.Web.UI.Page
    {
        Database db = Database.GetInstance();
        string request, comId;
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblAttender - bunun için sales yapılmalı
            //lblCity ++
            //lblEventName ++
            //lblComName ++
            //lblInfo ++
            //lblManager +
            //txtUsername --- girdi için
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
                            lblEventName.Text = dr["EventName"].ToString();
                            lblInfo.Text = dr["Info"].ToString();
                            lblComName.Text = dr["CommunityName"].ToString();
                            lblCity.Text = dr["City"].ToString();
                            comId = dr["CommunityID"].ToString();
                        }
                    }
                }
                using (SqlCommand cmd = new SqlCommand($"SELECT Manager FROM view_CommunityWithManagerName WHERE CommunityID = {comId}", conn))
                {
                    lblManager.Text = cmd.ExecuteScalar().ToString();
                }
            }
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
    }
}