using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        // Register kısmında kullanıcı oluştururken aynı kullanıcı adına sahip başka biri var mı diye kontrol edilmeli. Bu yüzden transaction oluşturulmalı.

        string name, lastname, username, email, sifre, sifreAgain;
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            name = txtName.Text;
            lastname = txtLastname.Text;
            username = txtUsername.Text;
            email = txtEmail.Text;
            sifre = txtPassword.Text;
            sifreAgain = txtPasswordAgain.Text;

            if (sifre != sifreAgain)
            {
                lblException.Text = "Şifreler uyuşmuyor.";
            }
            else
            {
                using (SqlConnection conn = db.GetConnection())
                {
                    try
                    {
                        conn.Open();

                        using (SqlCommand cmd = new SqlCommand("SP_CreateUser", conn))
                        {
                            cmd.CommandType = System.Data.CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@name", name);
                            cmd.Parameters.AddWithValue("@surname", lastname);
                            cmd.Parameters.AddWithValue("@username", username);
                            cmd.Parameters.AddWithValue("@email", email);
                            cmd.Parameters.AddWithValue("@password", sifre);

                            //// Procedure'den dönen isValid değerini tutmak için SqlParameter kullanıyoruz.
                            //SqlParameter isValid = new SqlParameter("@isValid", System.Data.SqlDbType.Int)
                            //{
                            //    Direction = System.Data.ParameterDirection.Output
                            //};
                            //cmd.Parameters.Add(isValid);

                            //cmd.ExecuteNonQuery();

                            int isValid = (int)cmd.ExecuteScalar();

                            if (isValid == 1)
                                btnRegister.BackColor = System.Drawing.Color.Green;
                            else
                            {
                                lblException.Text = "Farklı bir kullanıcı adı ya da mail ile deneyiniz.";
                            }
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
}