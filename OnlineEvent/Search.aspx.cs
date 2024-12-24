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
            txtSearch.Text = search;

            using (SqlConnection con = db.GetConnection())
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Member.Users "))
                {

                }
            }
        }
    }
}