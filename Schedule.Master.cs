using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSchedule
{
  public partial class Schedule : System.Web.UI.MasterPage
  {
    private static bool btnsInitialized = false;
    public static DateTime dtView;
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        }
      }
    } // end Page_Load

    protected void btnDay_Clicked(object sender, EventArgs e)
    {
      btnDay.BackColor = Color.FromArgb(11, 148, 230);
      btnDay.ForeColor = Color.White;
      btnMonth.BackColor = Color.FromArgb(235, 235, 235);
      btnMonth.ForeColor = Color.Black;
      viewdate.Text = dtView.ToString("MMM dd, yyyy");
    } // end btnDay_Clicked

    protected void btnMonth_Clicked(object sender, EventArgs e)
    {
      btnMonth.BackColor = Color.FromArgb(11, 148, 230);
      btnMonth.ForeColor = Color.White;
      btnDay.BackColor = Color.FromArgb(235, 235, 235);
      btnDay.ForeColor = Color.Black;
      viewdate.Text = dtView.ToString("MMM, yyyy");
    } // end btnMonth_Clicked

    protected void ArrowLeft_Click(object sender, ImageClickEventArgs e)
    {
      if (btnMonth.ForeColor == Color.White)
      {
        // subtract 1 month
        dtView = dtView.AddMonths(-1);
        viewdate.Text = dtView.ToString("MMM, yyyy");
        Response.Redirect("default.aspx");
      }
      else
      {
        // subtract 1 day
        dtView = dtView.AddDays(-1);
        viewdate.Text = dtView.ToString("MMM dd, yyyy");
        Response.Redirect("day.aspx");
      }
    } // end ArrowLeft_Click

    protected void ArrowRight_Click(object sender, ImageClickEventArgs e)
    {
      if (btnMonth.ForeColor == Color.White)
      {
        // add 1 month
        dtView = dtView.AddMonths(1);
        viewdate.Text = dtView.ToString("MMM, yyyy");
        Response.Redirect("default.aspx");
      }
      else
      {
        // add 1 day
        dtView = dtView.AddDays(1);
        viewdate.Text = dtView.ToString("MMM dd, yyyy");
        Response.Redirect("day.aspx");
      }
    } // end ArrowRight_Click
  }
}