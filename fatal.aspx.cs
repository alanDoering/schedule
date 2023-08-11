using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace schedule
{
  public partial class fatal : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      var p = Request.QueryString["reason"];
      if (p == null)
      {
        fatalMessage.Text = "Fatal Error: Unknown reason.";
      }
      else
      {
        fatalMessage.Text = "Fatal Error: " +p.ToString();
      }
    }
  }
}