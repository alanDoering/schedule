using Schedule;
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

namespace NewSchedule
{
  public partial class _month : System.Web.UI.Page
  {
    private SqlConnection sqlConn;
    private static bool bProtectDate = false;
    private static string provider;
    private static DateTime dtView;
    private static DateTime[,] dates = new DateTime[7, 7];

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

        //txtScheduleList.Visible = false;
        //txtScheduleList.Attributes.Add("OnClick", "txtScheduleList_Clicked");
        sqlConn = new SqlConnection(
          "Server=mi3-wsq1.my-hosting-panel.com;Database=alans_schedule;User Id=alansched;Password=Syzygy4043!");
        lblViewDate.Text = dtView.ToString("MMM, yyyy");
        lblTitle.Text = $"{provider}'s Schedule";
        fillMonth(dtView);
        //initSchedule(dtView);
        //fillSchedule(dtView);
        lblPickADay.Text = $"Click on a highlighted date to see {provider}'s schedule";
      }
    } // end Page_Load

    protected void ArrowLeft_Clicked(object sender, ImageClickEventArgs e)
    {
      dtView = dtView.AddMonths(-1);
      lblViewDate.Text = dtView.ToString("MMM, yyyy");
      fillMonth(dtView);
      //fillSchedule(dtView);
    } // end ArrowLeft_Clicked

    protected void ArrowRight_Clicked(object sender, ImageClickEventArgs e)
    {
      dtView = dtView.AddMonths(1);
      lblViewDate.Text = dtView.ToString("MMM, yyyy");
      fillMonth(dtView);
      //fillSchedule(dtView);
    } // end ArrowRight_Clicked

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
          dates[row, col] = xDate;
          sch = GetScheduleByDay(provider, xDate, "A");
          cell = tblMonth.Rows[row].Cells[col];
          Button btn = (Button)cell.Controls[0];
          btn.Text = xDate.Day.ToString();
          btn.Font.Bold = false;
          if (xDate.Month == first.Month) btn.Font.Bold = true;
          if (sch.Count > 0)
          {
            // the provider is available on this date. Color the background
            btn.BackColor = Color.FromArgb(194, 217, 240);
          }

          xDate = xDate.AddDays(1);
        }
      }
    } // end fillMonth

    //private void initSchedule(DateTime dt)
    //{
    //  DateTime dtSlot = dt;
    //  TableRow row;
    //  TableCell cell;
    //  Button btn;

    //  // remove previous rows
    //  while (tblSchedule.Controls.Count > 0)
    //  {
    //    tblSchedule.Controls.RemoveAt(0);
    //  }

    //  // create table row for all schedule time slots
    //  for (int idx = 0; idx < 34; idx++)
    //  {
    //    cell = new TableCell();
    //    btn = new Button();
    //    btn.CssClass = "SchedButton";
    //    btn.Text = dtSlot.ToString("hh:mm tt");

    //    cell.Controls.Add(btn);
    //    cell.Width = new Unit("100%");
    //    row = new TableRow();
    //    row.Cells.Add(cell);
    //    row.Width = new Unit("100%");
    //    tblSchedule.Controls.Add(row);
    //    dtSlot = dtSlot.AddMinutes(30);
    //  }
    //} // end initSchedule

    //private void fillSchedule(DateTime dt)
    //{
    //  int idx;
    //  string txt;
    //  TableRow row;
    //  TableCell cell;
    //  Button btn;
    //  string sFindTime, sSchedTime;
    //  DateTime dtSlot = new DateTime(dt.Year, dt.Month, dt.Day, 7, 0, 0);
    //  dtView = dt;

    //  // mark all available slots in schedule
    //  List<CalendarItem> sch = GetScheduleByDay(provider, dt, "A");
    //  foreach (CalendarItem itema in sch)
    //  {
    //    sFindTime = itema.apptTime.ToString("hh:mm tt");
    //    initSchedule(dtSlot);
    //    // find a matching slot in the table
    //    for (idx = 0; idx < tblSchedule.Rows.Count; idx++)
    //    {
    //      row = tblSchedule.Rows[idx];
    //      cell = row.Cells[0];
    //      btn =(Button)cell.Controls[0];
    //      if (!string.IsNullOrEmpty(btn.Text))
    //      {
    //        sSchedTime = btn.Text.Substring(0, 8);
    //        if (sFindTime == sSchedTime)
    //        {
    //          btn.Text+= " - Available @ " + itema.location;
    //          tblSchedule.Rows[idx].Cells[0].Controls.RemoveAt(0);
    //          tblSchedule.Rows[idx].Cells[0].Controls.Add(btn);
    //          tblSchedule.Rows[idx].BackColor = Color.FromArgb(220, 252, 220); // Light Green
    //          break;
    //        }
    //      }
    //    }
    //  }
    //  //for (int q=0; q < 15; q++)
    //  //{
    //  //  string s = tblSchedule.Rows[q].Cells[0].Text;
    //  //  int qq = 0;
    //  //}

    //  //// mark all the pending slots
    //  //sch = GetScheduleByDay(provider, dt, "P");
    //  //foreach (CalendarItem itemp in sch)
    //  //{
    //  //  idx = FindSlotIndex(itemp.apptTime);
    //  //  if (idx >= 0)
    //  //  {
    //  //    appendToLine(idx, $" - Pending @ {itemp.location}");
    //  //    //lstSchedule.Items[idx].Text += " - Pending @ " + itemp.location;
    //  //    //lstSchedule.Items[idx].Attributes.Add("Style", "background-color:#EED62B");
    //  //  }
    //  //}

    //  //// mark the booked slots
    //  //sch = GetScheduleByDay(provider, dt, "B");
    //  //foreach (CalendarItem itemb in sch)
    //  //{
    //  //  idx = FindSlotIndex(itemb.apptTime);
    //  //  if (idx >= 0)
    //  //  {
    //  //    appendToLine(idx, $" - Booked @ {itemb.location}");
    //  //    //lstSchedule.Items[idx].Text += " - Booked @ " + itemb.location;
    //  //    //lstSchedule.Items[idx].Attributes.Add("Style", "background-color:#FF9393");
    //  //  }
    //  //}

    //  //lstSchedule.SelectedIndex = -1;
    //} // end fillSchedule

    private List<CalendarItem> GetScheduleByDay(string provider, DateTime day, string status)
    {
      // return a list of calendar items for specified day and desired status
      List<CalendarItem> sch = new List<CalendarItem>();
      CalendarItem itm;

      string sCmd =
        $"SELECT * From calendar WHERE provider='{provider}' and apptDate='{day.ToString("yyyyMMdd")}' and status='{status}' ORDER BY apptTime";
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

    //private int FindSlotIndex(DateTime thyme)
    //{
    //  string item;
    //  string tym = thyme.ToString("hh:mm tt");
    //  for (int idx = 0; idx < tblSchedule.Rows.Count; idx++)
    //  {
    //    if (!string.IsNullOrEmpty(tblSchedule.Rows[idx].Cells[0].Text))
    //    {
    //      item = tblSchedule.Rows[idx].Cells[0].Text.Substring(0, 8);
    //      if (item == tym) return idx;
    //    }
    //  }
    //  return -1;
    //} // end FindSlotIndex

    protected void tblButton_Clicked(object sender, EventArgs e)
    {
      // come here whenever any date on calendar is clicked
      Button btn = (Button)sender;
      DateTime date;
      string wrk;
      int row, col;

      // get calendar row,col from button ID
      wrk = btn.ID;
      row = int.Parse(wrk.Substring(3, 1));
      col = int.Parse(wrk.Substring(4, 1));

      // check to see if date is highlighted
      if (btn.BackColor == Color.FromArgb(194, 217, 240))
      {
        // Provider is available on this date. Go to day.aspx to show her schedule
        date = dates[row, col];
        Response.Redirect($"day.aspx?user={provider}&date={date}");
      }
    } // end tblButton_Clicked

    //protected void txtScheduleList_Clicked(object sender, EventArgs e)
    //{
    //  string wrk;
    //  ListBox lb = (ListBox)sender;
    //  DateTime date = dtView; // date for currently viewable schedule

    //  // time from lstSchedule into date
    //  wrk = lb.Text.Substring(0, 9);
    //  DateTime time = DateTime.Parse(wrk);
    //  date = new DateTime(date.Year, date.Month, date.Day, time.Hour, time.Minute, time.Second);
    //  // go to page for booking an appointment
    //  Response.Redirect($"bookit.aspx?user={provider}&date={date.ToString("yyyyMMdd HH:mm")}");
    //} // end lstSchedule_Clicked

    protected void btnAdmin_Clicked(object sender, EventArgs e)
    {
      Response.Redirect($"bookit.aspx?user={provider}&date={dtView.ToString()}");
    } // end btnAdmin_Clicked

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

    protected void txtSched_Event(object sender, EventArgs e)
    {
      int i = 0;
    }
  }
}