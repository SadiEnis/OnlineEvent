using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace OnlineEvent
{
    public partial class AdminPage : System.Web.UI.Page
    {
        Database db;
        string request;
        int feedbackId;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
            if (!IsPostBack)
            {
                request = Request.QueryString["request"];

                using (SqlConnection con = db.GetConnection())
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand("SELECT AdminName FROM Member.Admins WHERE AdminID = " + request, con))
                    {
                        lblAdmin.Text = cmd.ExecuteScalar().ToString();
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT UserID, Name, Surname, Username, Email, CreatedAt FROM Member.Users", con))
                    {
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            gridViewUsers.DataSource = dr;
                            gridViewUsers.DataBind();
                        }
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT CommunityID, CommunityName, ComminityUsername, Email, CreatedAt, City, CreatedBy AS Olusturan FROM Member.Communities", con))
                    {
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            gridViewCommunities.DataSource = dr;
                            gridViewCommunities.DataBind();
                        }
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT EventID, EventName, CommunityID, EventDate, TicketPrice FROM EventSystem.Events", con))
                    {
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            gridViewEvents.DataSource = dr;
                            gridViewEvents.DataBind();
                        }
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT SaleID, UserID, EventID, PurchaseDate FROM EventSystem.Sales", con))
                    {
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            gridViewSales.DataSource = dr;
                            gridViewSales.DataBind();
                        }
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT Content FROM SiteDescription", con))
                    {
                        txtInfo.Text = cmd.ExecuteScalar().ToString();
                    }
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM FeedbackMessages", con))
                    {
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            datalistMessages.DataSource = dr;
                            datalistMessages.DataBind();
                        }
                    }
                }
            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridViewUsers.PageIndex = e.NewPageIndex;
        }
        protected void datalistMessages_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Send")
            {
                int feedbackId = Convert.ToInt32(e.CommandArgument);

                TextBox txtAdminNote = (TextBox)e.Item.FindControl("txtAdminNote");
                if (txtAdminNote != null)
                {
                    string adminNote = txtAdminNote.Text;

                    using (SqlConnection con = db.GetConnection())
                    {
                        con.Open();
                        string query = "UPDATE FeedbackMessages SET IsReviewed = 1, ReviewedAt = CONVERT(varchar(50), GETDATE(), 120), AdminNote = @AdminNote WHERE FeedbackId = @FeedbackId";
                        using (SqlCommand cmd = new SqlCommand(query, con))
                        {
                            cmd.Parameters.AddWithValue("@AdminNote", adminNote);
                            cmd.Parameters.AddWithValue("@FeedbackId", feedbackId);
                            cmd.ExecuteNonQuery();
                        }
                    }
                }
                //string script = "document.getElementById(\"messageboxOverlay\").style.display = \"block\"; document.getElementById(\"messsagebox\").style.display = \"block\";";
                //ClientScript.RegisterStartupScript(this.GetType(), "messageboxScript", script, true);

                string script = @"
                                window.onload = function() {
                                    document.getElementById('messageboxOverlay').style.display = 'block'; 
                                    document.getElementById('messagebox').style.display = 'block';};";
                ClientScript.RegisterStartupScript(this.GetType(), "messageboxScript", script, true);

                //function openModal()
                //{
                //    document.getElementById("modalOverlay").style.display = "block";
                //    document.getElementById("modal").style.display = "block";
                //}

            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string btnText = button.Text;
            if (btnText == "Kullanıcılar")
            {
                pnlUsers.Visible = true;
                pnlCommunities.Visible = false;
                pnlEvents.Visible = false;
                pnlSales.Visible = false;
                pnlInfo.Visible = false;
                pnlMessages.Visible = false;
            }
            else if (btnText == "Topluluklar")
            {
                pnlUsers.Visible = false;
                pnlCommunities.Visible = true;
                pnlEvents.Visible = false;
                pnlSales.Visible = false;
                pnlInfo.Visible = false;
                pnlMessages.Visible = false;
            }
            else if (btnText == "Etkinlikler")
            {
                pnlUsers.Visible = false;
                pnlCommunities.Visible = false;
                pnlEvents.Visible = true;
                pnlSales.Visible = false;
                pnlInfo.Visible = false;
                pnlMessages.Visible = false;
            }
            else if (btnText == "Satışlar")
            {
                pnlUsers.Visible = false;
                pnlCommunities.Visible = false;
                pnlEvents.Visible = false;
                pnlSales.Visible = true;
                pnlInfo.Visible = false;
                pnlMessages.Visible = false;
            }
            else if (btnText == "Hakkımızda")
            {
                pnlUsers.Visible = false;
                pnlCommunities.Visible = false;
                pnlEvents.Visible = false;
                pnlSales.Visible = false;
                pnlInfo.Visible = true;
                pnlMessages.Visible = false;
            }
            else if (btnText == "Mesajlar")
            {
                pnlUsers.Visible = false;
                pnlCommunities.Visible = false;
                pnlEvents.Visible = false;
                pnlSales.Visible = false;
                pnlInfo.Visible = false;
                pnlMessages.Visible = true;
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = db.GetConnection())
            {
                con.Open();

                SqlCommand sqlCommand = new SqlCommand($"UPDATE SiteDescription SET Content = '{txtInfo.Text} ' WHERE ID = 1");
            }
        }
    }
}