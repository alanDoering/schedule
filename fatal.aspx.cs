using System;

namespace Schedule
{
  public partial class fatal : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      var p = Request.QueryString["reason"];
      if (p == null)
      {
        message.Text = "Unknown reason.";
      }
      else
      {
        message.Text= p.ToString(); 
      }
    }
  }
}