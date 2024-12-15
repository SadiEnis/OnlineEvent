using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class CreateComminity : System.Web.UI.Page
    {
        Database db;
        string name, description, username, email, password, passwordAgain, city, creatorId;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
            creatorId = Request.QueryString["createdBy"];
            if (!IsPostBack)
            {
                db = Database.GetInstance();
                using (SqlConnection conn = db.GetConnection())
                {
                    conn.Open();
                    using (SqlCommand cmdCity = new SqlCommand("SELECT * FROM Cities", conn))
                    {
                        using (SqlDataReader dr = cmdCity.ExecuteReader())
                        {
                            ddlCity.DataSource = dr;
                            ddlCity.DataTextField = "CityName";
                            ddlCity.DataValueField = "Plate";
                            ddlCity.DataBind();
                        }
                    }
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            name = txtName.Text;
            username = txtComUsername.Text;
            description = txtDesc.Text;
            email = txtEmail.Text;
            password = txtPassword.Text;
            passwordAgain = txtPasswordAgain.Text;
            city = ddlCity.SelectedValue;
            creatorId = Request.QueryString["createdBy"];

            if (password != passwordAgain)
            {
                lblException.Text = "Şifreler uyuşmuyor";
            }
            else
            {
                using (SqlConnection con = db.GetConnection())
                {
                    con.Open();
                    try
                    {
                        using (SqlCommand createCommand = new SqlCommand("SP_CreateCommunity", con))
                        {
                            createCommand.CommandType = System.Data.CommandType.StoredProcedure;
                            createCommand.Parameters.AddWithValue("@name", name);
                            createCommand.Parameters.AddWithValue("@description", description);
                            createCommand.Parameters.AddWithValue("@createdBy", creatorId);
                            createCommand.Parameters.AddWithValue("@city", city);
                            createCommand.Parameters.AddWithValue("@username", username);
                            createCommand.Parameters.AddWithValue("@email", email);
                            createCommand.Parameters.AddWithValue("@password", password);

                            int isValid = (int)createCommand.ExecuteScalar();
                            if (isValid == 1)
                                btnSave.BackColor = System.Drawing.Color.Green;
                            else
                            {
                                lblException.Text = "Farklı bir kullanıcı adı ya da mail ile deneyiniz.";
                            }

                        }
                    }
                    catch (Exception)
                    {
                        lblException.Text = "Bir hata oluştu. Tekrar deneyiniz";
                        throw;
                    }
                }
            }
        }
    }
}