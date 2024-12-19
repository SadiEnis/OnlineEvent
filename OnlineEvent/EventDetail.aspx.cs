using System;
using System.Data.SqlClient;

namespace OnlineEvent
{
    public partial class EventDetail : System.Web.UI.Page
    {
        Database db = Database.GetInstance();
        string request, comId, eventId;
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
                            eventId = dr["EventID"].ToString();
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string username;
            string userId = "";
            using (SqlConnection conn = db.GetConnection())
            {
                conn.Open();
                if (txtUsername.Text == "")
                    lblException.Text = "Kullanıcı adını giriniz.";
                else
                {
                    username = txtUsername.Text;
                    using (SqlCommand cmd = new SqlCommand($"SELECT 1 FROM Member.Users U WHERE U.Username != '{username}'", conn))
                    {
                        if (cmd.ExecuteScalar().ToString() == "1")
                        {
                            using (SqlCommand cmdId = new SqlCommand($"SELECT U.UserID FROM Member.Users U WHERE U.Username = '{username}'", conn))
                            {
                                userId = cmdId.ExecuteScalar().ToString();
                            }
                        }
                        else
                            lblException.Text = "Kullanıcı adı bulunamadı.";
                    }
                    SqlCommand cmdInsert = new SqlCommand($"INSERT INTO EventSystem.Sales (UserID, EventID) VALUES ({userId}, {eventId})",conn);
                    cmdInsert.ExecuteNonQuery();
                }
            }
        }

        protected void btnAttendee_Click(object sender, EventArgs e)
        {
            panelInfo.Visible = false;
            panelAttendee.Visible = true;
        }
    }
}