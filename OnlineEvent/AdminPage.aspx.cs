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
                request = "1";

                using (SqlConnection con = db.GetConnection())
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM FeedbackMessages", con))
                    {
                        SqlDataReader dr = cmd.ExecuteReader();

                        datalistMessages.DataSource = dr;
                        datalistMessages.DataBind();
                    }
                }
            }
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
    }
}