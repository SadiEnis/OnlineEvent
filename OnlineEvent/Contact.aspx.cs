using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class Contact : System.Web.UI.Page
    {
        Database db;
        string userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = db.GetConnection())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand($"SELECT UserID FROM Member.Users WHERE Username = '{txtUsername.Text}'", conn))
                {
                    userId = cmd.ExecuteScalar().ToString(); // Hataya bak
                }
                if (userId != null)
                {
                    using (SqlCommand cmd = new SqlCommand($"INSERT INTO FeedbackMessages (UserID, Content) VALUES ({userId},'{txtDesc.Text}')", conn))
                    {
                        cmd.ExecuteNonQuery();
                    }
                }
                else
                {
                    // hata mesajı ihtiyacı var.
                }
            }

        }
    }
}