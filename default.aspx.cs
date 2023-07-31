using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSchedule
{
  public partial class _default1 : System.Web.UI.Page
  {
    private string provider;
    private DateTime dtView = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
      if (!IsPostBack)
      {
        var vr = Request.QueryString["user"];
        if (vr != null)
        {
          provider = vr.ToString();
          if (string.IsNullOrEmpty(provider))
          {
            Response.Redirect("fatal.aspx?reason=Missing provider name");
            return;
          }
          Response.Redirect($"month.aspx?user={provider}");
        }
        Response.Redirect("fatal.aspx?reason=Invalid startup");
        return;
      }
    } // end Page_Load
  } // end partial class _default1
} // end namespace