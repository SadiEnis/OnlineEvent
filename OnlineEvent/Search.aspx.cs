using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class Search : System.Web.UI.Page
    {
        Database db;
        string search;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();

            search = Request.QueryString["request"];

            using (SqlConnection con = db.GetConnection())
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand($"SELECT UserId, Name, Surname FROM Member.Users WHERE Name LIKE '%{search}%' OR SURNAME LIKE '%{search}%'", con))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        gridUsers.DataSource = dr;
                        gridUsers.DataBind();
                    }
                }
                using (SqlCommand cmd = new SqlCommand($"SELECT CommunityId, CommunityName, City FROM Member.Communities WHERE CommunityName LIKE '%{search}%'", con))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        gridCom.DataSource = dr;
                        gridCom.DataBind();
                    }
                }
                using (SqlCommand cmd = new SqlCommand($"SELECT EventId, EventName, EventDate FROM EventSystem.Events WHERE EventName LIKE '%{search}%'", con))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        gridEvents.DataSource = dr;
                        gridEvents.DataBind();
                    }
                }
            }
        }
        protected void gridUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectRow")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridUsers.Rows[id];
                string userId = row.Cells[1].Text;

                Response.Redirect("/Profiles/Profile.aspx?request=" + userId);
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

        protected void gridEvent_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "SelectRow")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gridCom.Rows[id];
                string eventId = row.Cells[1].Text;

                Response.Redirect("/EventDetail.aspx?request=" + eventId);
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = db.GetConnection())
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand($"SELECT UserId, Name, Surname FROM Member.Users WHERE Name LIKE '%{txtSearch.Text}%' OR SURNAME LIKE '%{txtSearch.Text}%'", con))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        gridUsers.DataSource = dr;
                        gridUsers.DataBind();
                    }
                }
                using (SqlCommand cmd = new SqlCommand($"SELECT CommunityId, CommunityName, City FROM Member.Communities WHERE CommunityName LIKE '%{txtSearch.Text}%'", con))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        gridCom.DataSource = dr;
                        gridCom.DataBind();
                    }
                }
                using (SqlCommand cmd = new SqlCommand($"SELECT EventId, EventName, EventDate FROM EventSystem.Events WHERE EventName LIKE '%{txtSearch.Text}%'", con))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        gridEvents.DataSource = dr;
                        gridEvents.DataBind();
                    }
                }
            }
        }
    }
}