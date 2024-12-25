using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();

            using (SqlConnection con = db.GetConnection())
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand($"SELECT TOP 15 EventID, EventName, EventDate FROM EventSystem.Events", con))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        gridEvents.DataSource = dr;
                        gridEvents.DataBind();
                    }
                }

                using (SqlCommand cmd = new SqlCommand("SELECT TOP 10 CommunityID, CommunityName, City FROM Member.Communities", con))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        gridCom.DataSource = dr;
                        gridCom.DataBind();
                    }
                }
            }
        }


        protected void btnCom_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }

        protected void gridEvents_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectRow")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridEvents.Rows[id];
                string eventId = row.Cells[1].Text;

                Response.Redirect("/EventDetail.aspx?request=" + eventId);
            }
        }
        protected void gridCom_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectRow")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridCom.Rows[id];
                string comId = row.Cells[1].Text;

                Response.Redirect("/Profiles/Commity.aspx?request=" + comId);
            }
        }

        protected void btnEvents_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/Events.aspx");
        }
    }
}