using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSchedule
{
  public partial class login : System.Web.UI.Page
  {
    private static string provider;

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
        lbltitle.Text = $"{provider}'s Admin Login";
        txtAdminName.Text = provider;
      }
    } // end Page_Load
    protected void btnLogin_Clicked(object sender, EventArgs e)
    {
      Response.Redirect($"admin.aspx?user={provider}");
    } // end btnLogin_Clicked
  }
}