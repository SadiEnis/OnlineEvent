using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = Database.GetInstance().GetConnection())
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT Content FROM SiteDescription", con);
                lblInfo.Text  = cmd.ExecuteScalar().ToString();
            }
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/LoginPage.aspx");
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RegisterPage.aspx");
        }
        protected void btnMainPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MainPage.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Search.aspx?request=" + txtSearch.Text);
        }

        protected void btnEvents_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Events.aspx");
        }
        protected void btnComminity_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Communities.aspx");
        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Contact.aspx");
        }

    }
}