using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSchedule
{
  public partial class _bookit : System.Web.UI.Page
  {
    private string provider;
    private DateTime dtView = DateTime.Now;
    private static bool bProtectDate = false;

    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        var vr = Request.QueryString["user"];
        if (vr != null)
        {
          provider = vr.ToString();
          if (!string.IsNullOrEmpty(provider))
          {
            Response.Redirect("fatal.aspx?reason=Missing provider name");
            return;
          }
        }

        if (!bProtectDate)
        {
          vr = Request.QueryString["date"];
          if (vr == null)
          {
            Response.Redirect("fatal.aspx?reason=Missing date");
            return;
          }
        }
        bProtectDate = true;
      }
      return;
    } // end Page_Load
  }
}