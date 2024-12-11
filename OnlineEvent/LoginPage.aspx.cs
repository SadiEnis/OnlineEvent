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
                query = "SELECT COUNT(*) FROM Member.Admins WHERE Email = @Email AND Password = @Password";

                SqlCommand loginCommand = new SqlCommand(query, conn);
                loginCommand.Parameters.AddWithValue("@Email", email);
                loginCommand.Parameters.AddWithValue("@Password", password);

                conn.Open(); // bu işlem veri tabanında cursor ile de yapılabilir
                // bu işlemler procedure haline getirilmeli
                int userCount = (int)loginCommand.ExecuteScalar();

                if (userCount > 0)
                    btnLogin.BackColor = Color.Green;
                else
                    btnLogin.BackColor = Color.Red;
            }
        }
    }
}