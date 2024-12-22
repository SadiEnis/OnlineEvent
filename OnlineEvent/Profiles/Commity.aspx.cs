using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace OnlineEvent.Profiles
{
    public partial class Commity : System.Web.UI.Page
    {
        string communityId, query;
        int isFollow;
        Database db;
        List<string> eventIds;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
            eventIds = new List<string>();
            if (!IsPostBack)
            {
                communityId = Request.QueryString["request"];
                query = $"SELECT * FROM view_CommunityWithManagerName where CommunityID = {communityId}";

                using (SqlConnection con = db.GetConnection())
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.Read())
                            {
                                lblCommName.Text = dr["Name"].ToString();
                                lblCity.Text = dr["City"].ToString();
                                lblInfo.Text = dr["Info"].ToString();
                                lblManager.Text = dr["Manager"].ToString();
                            }
                        }
                    }
                    using (SqlCommand cmd = new SqlCommand($"SELECT e.EventID AS [EtkinlikNumarasi], e.EventName AS [Etkinlik Adı], E.EventDate AS [Etkinlik Tarihi], E.TicketPrice AS [Katılım Ücreti] \r\nFROM EventSystem.Events E WHERE e.CommunityID = {communityId};", con))
                    {
                        SqlDataReader dr = cmd.ExecuteReader();
                        gridEvents.DataSource = dr;
                        gridEvents.DataBind();
                    }
                    //using (SqlCommand cmd = new SqlCommand("SELECT 1 FROM Relationship.Membership WHERE CommunityID = {} AND UserID = ", con))
                    //{
                        // Bu alan tıklanıldığında kullanıcıları üye yapmak için bulunmaktadır.
                    //}
                }
            }
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

        protected void btnFollow_Click(object sender, EventArgs e)
        {
            // Şimdilik bu özellik yakında geri bildirimi verelim.
            string script = "alert('Bu özellik şimdilik kullanılamamaktadır. Yakında aktif hale getirilecektir.');";
            ScriptManager.RegisterStartupScript(this, this.GetType(), "AlertScript", script, true);
        }

        protected void btnMembers_Click(object sender, EventArgs e)
        {
            panelInfo.Visible = false;
            panelEvents.Visible = false;
            panelMembers.Visible = true;
        }
    }
}