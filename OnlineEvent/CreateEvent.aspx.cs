using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEvent
{
    public partial class CreateEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime time = DateTime.Now;
            DateTime dateTime = Convert.ToDateTime("5.12.2024 0:0:0");
            // Tarih Formatı ----> Date = {6.12.2024 00:00:00}
            if (dateTime < DateTime.Now)
                btnSave.BackColor = Color.Red;

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

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }
    }
}