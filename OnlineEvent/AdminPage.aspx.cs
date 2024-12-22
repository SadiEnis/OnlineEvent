using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class AdminPage : System.Web.UI.Page
    {
        Database db;
        string request, feedbackId;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
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

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string a = feedbackId;
        }

        protected void btnSend_Command(object sender, CommandEventArgs e)
        {
            if (!IsPostBack)
            {
                feedbackId = e.CommandArgument.ToString();
            }
        }
    }
}