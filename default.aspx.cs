using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schedule
{
  public partial class _default : System.Web.UI.Page
  {
    private SqlConnection sqlConn;
    private static bool bProtectDate = false;
    private static string provider;
    private static DateTime dtView;
    private static bool[] bHighlighted = new bool[31];

    protected void Page_Load(object sender, EventArgs e)
    {
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
          dtView = DateTime.Today;
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
          clearHighlights();
        }

        lbltitle.Text = $"{provider}'s Calendar";
        lblPickDay.Text = " Click on a highlighted day to see schedule.";
        mainCalendar.SelectedDayStyle.BackColor = Color.FromArgb(194, 217, 240);
        mainCalendar.SelectedDayStyle.ForeColor = Color.Black;
        mainCalendar.TodaysDate = dtView;
        mainCalendar.SelectedDate = dtView;
        mainCalendar.VisibleDate = dtView;
      }
    } // end Page_Load
    protected void mainCalendar_DayRender(object sender, DayRenderEventArgs e)
    {
      // as each day on calendar is being rendered come here
      if (dtView.Month != e.Day.Date.Month) return;
      int iDay = e.Day.Date.Day;
      List<CalendarItem> sch = GetScheduleByDay(provider, e.Day.Date, "*");
      if (sch.Count > 0)
      {
        e.Cell.BackColor= Color.FromArgb(119, 154, 201);
        bHighlighted[iDay] = true;
      }
    } // end mainCalendar_DayRender
    protected void mainCalendar_SelectionChanged(object sender, EventArgs e)
    {
      DateTime newDate = mainCalendar.SelectedDate;
      if (newDate.Month != dtView.Month) return;
      string sDate = newDate.ToString("yyyy-MM-dd");
      if (bHighlighted[newDate.Day])
      {
        Response.Redirect($"schedule.aspx?user={provider}&date={sDate}");
      }
    } // end mainCalendar_SelectionChanged
    protected void mainCalendar_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
    {
      // create boolean higblighted array to shadow state of days in new month
      dtView = e.NewDate;
      clearHighlights();
    } // end mainCalendar_VisibleMonthChanged
    protected void btnGoLogin_Clicked(object sender, EventArgs e)
    {
      Response.Redirect($"login.aspx?user={provider}");
    } // end btnGoLogin_Clicked
    private List<CalendarItem> GetScheduleByDay(string provider, DateTime day, string status)
    {
      // return a list of calendar items for specified day and desired status
      List<CalendarItem> sch = new List<CalendarItem>();
      CalendarItem itm;
      string sCmd = $"SELECT * From calendar WHERE provider='{provider}' and apptDate='{day.ToString("yyyyMMdd")}'";
      if (status != "*")
      {
        sCmd += $" and status='{status}'";
      }

      sCmd += " ORDER BY apptTime";

      sqlConn = new SqlConnection(
        "Server=mi3-wsq1.my-hosting-panel.com;Database=alans_schedule;User Id=alansched;Password=Syzygy4043!");
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
    private void clearHighlights()
    {
      for (int ix = 0; ix < bHighlighted.Count(); ix++)
      {
        bHighlighted[ix] = false;
      }
    } // end clearHighlights
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
    }
  }
}