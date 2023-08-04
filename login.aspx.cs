using System;
using System.Data.SqlClient;

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
      string pwd;
      string sCmd = $"SELECT * From providers WHERE Name='{provider}'";
      SqlConnection sqlConn = new SqlConnection("Server=mi3-wsq1.my-hosting-panel.com;Database=alans_schedule;User Id=alansched;Password=Syzygy4043!");
      sqlConn.Open();
      SqlCommand cmd = new SqlCommand(sCmd, sqlConn);
      SqlDataReader rdr = cmd.ExecuteReader();
      if (!rdr.Read())
      {
        // read  failed
        loginError.Text = "Login failed. Provider not found";
        txtAdminName.Focus();
        return;
      }
      var p = rdr["Password"];
      if (!rdr.IsClosed) rdr.Close();
      if (p==null)
      {
        loginError.Text = "Login failed. Password not found";
        txtAdminPassword.Focus();
        return;
      }
      pwd = p.ToString();
      if (string.IsNullOrEmpty(pwd))
      {
        loginError.Text = "Login failed. Password not found";
        txtAdminPassword.Focus();
        return;
      }
      if (pwd!=txtAdminPassword.Text)
      {
        loginError.Text = "Login failed. Password is invalid";
        txtAdminPassword.Focus();
        return;
      }

      Response.Redirect($"admin.aspx?user={provider}");
    } // end btnLogin_Clicked
  }
}