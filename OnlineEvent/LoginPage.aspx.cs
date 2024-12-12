using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class Login : System.Web.UI.Page
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

                    using (SqlCommand loginCommand = new SqlCommand("SP_CheckAdminLOgin", conn))
                    {
                        loginCommand.CommandType = System.Data.CommandType.StoredProcedure;
                        loginCommand.Parameters.AddWithValue("@Email", email);
                        loginCommand.Parameters.AddWithValue("@Password", password);

                        if ((int)loginCommand.ExecuteScalar() == 1) 
                            btnLogin.BackColor = Color.Green;
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