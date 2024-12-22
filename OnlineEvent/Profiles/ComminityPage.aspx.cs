using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent.Profiles
{
    public partial class ComminityPage : System.Web.UI.Page
    {
        string communityId, query;
        Database db;
        List<string> eventIds;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
            eventIds = new List<string>();
            if (!IsPostBack)
            {
                communityId = "1";
                //communityId = Request.QueryString["request"];
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
                                txtName.Text = dr["Name"].ToString();
                                txtDesc.Text = dr["Info"].ToString();
                            }
                        }
                    }
                    using (SqlCommand cmd = new SqlCommand($"SELECT e.EventID AS [EtkinlikNumarasi], e.EventName AS [Etkinlik Adı], E.EventDate AS [Etkinlik Tarihi], E.TicketPrice AS [Katılım Ücreti] \r\nFROM EventSystem.Events E WHERE e.CommunityID = {communityId};", con))
                    {
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            gridEvents.DataSource = dr;
                            gridEvents.DataBind();
                        }
                    }
                    using (SqlCommand cmd1 = new SqlCommand($"SELECT * FROM Member.Communities where CommunityID = {communityId}", con))
                    {
                        SqlDataReader dr = cmd1.ExecuteReader();
                        if (dr.Read())
                        {
                            txtMail.Text = dr["Email"].ToString();
                            txtPassword.Text = "***";
                        }
                    }
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
        protected void btnMembers_Click(object sender, EventArgs e)
        {
            panelInfo.Visible = false;
            panelEvents.Visible = false;
            panelMembers.Visible = true;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (pnlEditComm.Visible == false)
            {
                pnlEditComm.Visible = true;
            }
            else
            {
                pnlEditComm.Visible = false;
            }
        }

        protected void btnCreateEvent_Click(object sender, EventArgs e)
        {
            communityId = Request.QueryString["request"];
            Session["UserID"] = communityId;
            string site = $"~/CreateEvent.aspx?request={communityId}";
            Response.Redirect(site);
        }

        protected void gridMembers_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void gridEvents_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectRow")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridEvents.Rows[id];
                string eventId = row.Cells[1].Text;
                
                Response.Redirect("/EventManage.aspx?request=" + eventId);
            }
        }

        protected void txtDesc_TextChanged(object sender, EventArgs e)
        {

        }
    }
}