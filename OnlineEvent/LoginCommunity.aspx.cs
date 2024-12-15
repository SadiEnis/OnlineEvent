using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class LoginCommunity : System.Web.UI.Page
    {
        Database db;
        string email, password, query;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            email = txtEmail.Text;
            password = txtSifre.Text;

            using (SqlConnection conn = db.GetConnection())
            {
                try
                {
                    conn.Open();

                    using (SqlCommand loginCommand = new SqlCommand("SP_CheckCommunityLogin", conn))
                    {
                        loginCommand.CommandType = System.Data.CommandType.StoredProcedure;
                        loginCommand.Parameters.AddWithValue("@Email", email);
                        loginCommand.Parameters.AddWithValue("@Password", password);

                        object result = loginCommand.ExecuteScalar();

                        if (result != null)
                        {
                            int commId = Convert.ToInt32(result);
                            Session["ComminityId"] = commId;
                            string site = $"/Profiles/ComminityPage.aspx?request={commId}";
                            Response.Redirect(site);
                        }
                        else
                            lblException.Text = "Kullanıcı adı veya şifre hatalı.";
                    }
                }
                catch (Exception)
                {
                    lblException.Text = "Bir hata oluştu. Tekrar deneyiniz.";
                }
            }
        }
    }
}