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
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
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
                                lblInfo.Text = dr["Info"].ToString() ;
                                lblManager.Text = dr["Manager"].ToString();
                                txtName.Text = dr["Name"].ToString();
                                txtDesc.Text = dr["Info"].ToString();
                            }
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

        protected void txtDesc_TextChanged(object sender, EventArgs e)
        {

        }
    }
}