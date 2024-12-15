using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent.User
{
    public partial class UserProfile1 : System.Web.UI.Page
    {
        string userId;
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
            if (!IsPostBack)
            {
                userId = Request.QueryString["UserID"];
                string query = $"SELECT U.Name, U.Surname, U.Username, U.Email FROM Member.Users U WHERE U.UserID = {userId}";

                using (SqlConnection conn = db.GetConnection())
                {
                    conn.Open();

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.Read())
                        {
                            lblName.Text = dr[0].ToString();
                            lblSurname.Text = dr[1].ToString();
                            lblUsername.Text = dr[2].ToString();
                            txtName.Text = dr[0].ToString();
                            txtSurname.Text = dr[1].ToString();
                            txtEmail.Text = dr[3].ToString();
                        }
                    }
                }
            }
        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            if (pnlEditProfile.Visible)
                pnlEditProfile.Visible = false;
            else
                pnlEditProfile.Visible = true;
        }

        protected void btnCreateComunity_Click(object sender, EventArgs e)
        {
            userId = Request.QueryString["UserID"];
            Response.Redirect($"/CreateCommunity.aspx?createdBy={userId}");
        }
    }
}