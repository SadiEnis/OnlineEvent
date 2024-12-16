using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class Events : System.Web.UI.Page
    {
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
            Page.Title = "Etkinlikler";
            using (SqlConnection con = db.GetConnection())
            {
                con.Open();
                using (SqlCommand cmdEvents = new SqlCommand("SELECT * FROM view_EventWithCommunity", con))
                {
                    SqlDataReader dr = cmdEvents.ExecuteReader();
                    DataList.DataSource = dr;
                    DataList.DataBind();
                }
            }
        }
    }
}