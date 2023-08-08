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
        lblLoginTitle.Text = $"{provider}'s Admin Login";
        txtAdminName.Text = provider;
        lblNameAndPassword.Text = "Please enter your Name and Password";
        lblAdminNameCaption.Text = "Name";
        lblAdminPasswordCaption.Text = "Password";
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
        // read  failedProvider not found";
        txtAdminName.Focus();
        return;
      }
      var p = rdr["Password"];
      if (!rdr.IsClosed) rdr.Close();
      if (p == null)
      {
        loginError.Text = "Password not found";
        txtAdminPassword.Focus();
        return;
      }
      pwd = p.ToString();
      if (string.IsNullOrEmpty(pwd))
      {
        loginError.Text = "Password not found";
        txtAdminPassword.Focus();
        return;
      }
      if (pwd != txtAdminPassword.Text)
      {
        loginError.Text = "Password is invalid";
        txtAdminPassword.Focus();
        return;
      }

      Response.Redirect($"admin.aspx?user={provider}&password={pwd}");
    } // end btnLogin_Clicked
    protected void btnCancel_Clicked(object sender, EventArgs e)
    {
      Response.Redirect($"month.aspx?user={provider}&date={DateTime.Now.ToString()}");
    } // end btnLogin_Clicked
  }
}