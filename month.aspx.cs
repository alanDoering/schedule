using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.XPath;

namespace Schedule
{
  public partial class _month : System.Web.UI.Page
  {
    private SqlConnection sqlConn;
    private static bool bProtectDate = false;
    private static string provider;
    private static DateTime dtView;
    //private static DateTime[,] dates = new DateTime[7, 7];

    protected void Page_Load(object sender, EventArgs e)
    {
      Label lblT = (Label)Page.Master.FindControl("lblTitle");
      if (!IsPostBack)
      {
        var vr = Request.QueryString["user"];
        if (vr == null)
        {
          Response.Redirect("fatal.aspx?reason=Missing provider name");
          return;
        }

        provider = vr.ToString();
        if (string.IsNullOrEmpty(provider))
        {
          Response.Redirect("fatal.aspx?reason=Missing provider name");
          return;
        }

        if (!bProtectDate)
        {
          // execute 1st time only
          dtView = DateTime.Now;
          vr = Request.QueryString["date"];
          if (vr != null)
          {
            if (!DateTime.TryParse(vr, out dtView))
            {
              Response.Redirect("fatal.aspx?reason=Invalid date");
              return;
            }
          }

          bProtectDate = true;
        }

        lblViewDate.Text = dtView.ToString("MMM, yyyy");
        lblT.Text = $"{provider}'s Calendar";
        fillMonth(dtView);
        lblPickADay.Text = $"Click on a highlighted date to see {provider}'s schedule";
      }
    } // end Page_Load
    private void fillMonth(DateTime dt)
    {
      List<CalendarItem> sch;
      TableCell cell;
      DateTime first = new DateTime(dt.Year, dt.Month, 1);
      int dow = (int)first.DayOfWeek;
      DateTime xDate = first.AddDays(-dow);
      for (int row = 1; row < 7; row++)
      {
        for (int col = 0; col < 7; col++)
        {
          //dates[row, col] = xDate;
          sch = GetScheduleByDay(provider, xDate, "A");
          cell = tblmonth.Rows[row].Cells[col];
          Button btn = (Button)cell.Controls[0];
          btn.Text = xDate.Day.ToString();
          btn.Font.Bold = false;
          btn.BackColor = Color.FromArgb(238, 238, 238); // light Gray
          btn.ForeColor = Color.Black;
          if (xDate.Month == first.Month)
          {
            btn.Font.Bold = true;
            btn.BackColor = Color.FromArgb(194, 217, 240); // light Blue
          }
          if (sch.Count > 0)
          {
            // the provider is available on this date. Color the background
            btn.BackColor = Color.FromArgb(119, 154, 201); // dark blue
            btn.ForeColor = Color.White;
          }
          xDate = xDate.AddDays(1);
        }
      }
    } // end fillMonth
    private List<CalendarItem> GetScheduleByDay(string provider, DateTime day, string status)
    {
      // return a list of calendar items for specified day and desired status
      List<CalendarItem> sch = new List<CalendarItem>();
      CalendarItem itm;

      string sCmd = $"SELECT * From calendar WHERE provider='{provider}' and apptDate='{day.ToString("yyyyMMdd")}' and status='{status}' ORDER BY apptTime";
      sqlConn = new SqlConnection("Server=mi3-wsq1.my-hosting-panel.com;Database=alans_schedule;User Id=alansched;Password=Syzygy4043!");
      sqlConn.Open();
      SqlCommand cmd = new SqlCommand(sCmd, sqlConn);
      SqlDataReader rdr = cmd.ExecuteReader();
      while (rdr.Read())
      {
        itm = new CalendarItem
        {
          provider = rdr["provider"].ToString(),
          location = rdr["location"].ToString(),
          status = rdr["status"].ToString(),
          email = rdr["email"].ToString(),
          clientname = rdr["clientname"].ToString(),
          clientemail = rdr["clientemail"].ToString(),
          clientphone = rdr["clientphone"].ToString(),
          clientcomments = rdr["clientcomments"].ToString()
        };
        var vr = rdr["apptDate"];
        if (vr != null)
        {
          DateTime.TryParse(vr.ToString(), out itm.apptDate);
        }

        vr = rdr["apptTime"];
        if (vr != null)
        {
          DateTime.TryParse(vr.ToString(), out itm.apptTime);
        }
        sch.Add(itm);
      }

      if (!rdr.IsClosed) rdr.Close();
      sqlConn.Close();
      return sch;
    } // end GetScheduleByDay
    protected void tblButton_Clicked(object sender, EventArgs e)
    {
      // come here whenever any date on calendar is clicked
      Button btn = (Button)sender;
      DateTime date;
      int dy;

      // get calendar day from button text
      dy = int.Parse(btn.Text);
      date = new DateTime(dtView.Year, dtView.Month, dy, 0, 0, 0);

      // check to see if date is highlighted
      if (btn.BackColor == Color.FromArgb(119, 154, 201))
      {
        // Provider is available on this date. Go to day.aspx to show her schedule
        Response.Redirect($"day.aspx?user={provider}&date={date}");
      }
    } // end tblButton_Clicked
    protected void btnAdmin_Clicked(object sender, EventArgs e)
    {
      Response.Redirect($"login.aspx?user={provider}&date={dtView.ToString()}");
    } // end btnAdmin_Clicked
    protected void ArrowLeft_Clicked(object sender, ImageClickEventArgs e)
    {
      dtView = dtView.AddMonths(-1);
      lblViewDate.Text = dtView.ToString("MMM, yyyy");
      fillMonth(dtView);
    } // end ArrowLeft_Clicked

    protected void ArrowRight_Clicked(object sender, ImageClickEventArgs e)
    {
      dtView = dtView.AddMonths(1);
      lblViewDate.Text = dtView.ToString("MMM, yyyy");
      fillMonth(dtView);
    } // end ArrowRight_Clicked

    private struct CalendarItem
    {
      public string provider;
      public string location;
      public string status;
      public string email;
      public string clientname;
      public string clientemail;
      public string clientphone;
      public string clientcomments;
      public DateTime apptDate;
      public DateTime apptTime;
    } // end CalendarItem
  }
}