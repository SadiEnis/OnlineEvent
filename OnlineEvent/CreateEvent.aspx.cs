using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class CreateEvent : System.Web.UI.Page
    {
        string name, description, password, dbPassword, attendees, price;
        int comminityId;
        DateTime date;
        Database db;

        protected void Page_Load(object sender, EventArgs e)
        {
            db = Database.GetInstance();
            if (!IsPostBack)
            {
                List<int> days = new List<int>();
                for (int i = 1; i <= 31; i++)
                    days.Add(i);

                List<int> months = new List<int>();
                for (int i = 1; i <= 12; i++)
                    months.Add(i);

                List<int> years = new List<int>();
                years.Add(2024);
                years.Add(2025);

                List<int> hours = new List<int>();
                for (int i = 0; i <= 23; i++)
                    hours.Add(i);

                List<int> minutes = new List<int>();
                for (int i = 0; i <= 59; i++)
                    minutes.Add(i);


                ddlDay.DataSource = days;
                ddlMonth.DataSource = months;
                ddlYear.DataSource = years;
                ddlHour.DataSource = hours;
                ddlMinute.DataSource = minutes;

                ddlDay.DataBind();
                ddlMonth.DataBind();
                ddlYear.DataBind();
                ddlHour.DataBind();
                ddlMinute.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            name = txtName.Text;
            description = txtDesc.Text;
            comminityId = int.Parse(Request.QueryString["request"]); // Diğer sayfadan buraya geçerken bu değer tanımlanacak.
            date = StringToDatetime(
                ddlDay.SelectedItem.ToString(),
                ddlMonth.SelectedItem.ToString(),
                ddlYear.SelectedItem.ToString(),
                ddlHour.SelectedItem.ToString(),
                ddlMinute.SelectedItem.ToString());
            price = txtPrice.Text;
            attendees = txtMaxMember.Text;
            password = txtPassword.Text;
            password = ConvertSHA256(password); // doğru çalışmıyor procedure haline getir...
            using (SqlConnection conn = db.GetConnection())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand($"SELECT * FROM Member.Communities WHERE CommunityID = {comminityId}"))
                {
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        // C# ile SHA dönüşümü yapıp kontrol edilmeli
                        dbPassword = dr["Password"].ToString();
                    }
                }
            }

            if (date < DateTime.Now)
                lblException.Text = "Tarih geçerli değil. Farklı bir tarih deneyiniz.";
            else
            {
                using (SqlConnection con = db.GetConnection())
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand("SP_CreateEvent", con))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@name", name);
                        cmd.Parameters.AddWithValue("@description", description);
                        cmd.Parameters.AddWithValue("@comminity", comminityId);
                        cmd.Parameters.AddWithValue("@eventdate", date);
                        cmd.Parameters.AddWithValue("@price", price);
                        cmd.Parameters.AddWithValue("@attendees", attendees);

                        int isValid = (int)cmd.ExecuteScalar();
                        if (isValid == 1)
                            btnSave.BackColor = Color.Red;
                        else
                        {
                            lblException.Text = "Bir hata oluştu ve etkinlik oluşturulamadı.";
                        }
                    }
                }
            }
        }

        DateTime StringToDatetime(string day, string month, string year, string hour, string minute)
        {
            // Tarih Formatı ----> Date = {6.12.2024 00:00:00}
            string dateString = $"{day}.{month}.{year} {hour}:{minute}:00";
            DateTime dateTime = Convert.ToDateTime(dateString);

            return dateTime;
        }

        string ConvertSHA256(string data)
        {
            using (SHA256 sha = SHA256.Create())
            {
                byte[] bytes = sha.ComputeHash(Encoding.UTF8.GetBytes(data));

                StringBuilder builder = new StringBuilder();
                foreach (byte b in bytes)
                {
                    builder.Append(b.ToString("x2"));
                }
                return builder.ToString();
            }
        }
    }
}