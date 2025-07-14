using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Portfolio.App_Code;
namespace Portfolio.FinalProj
{

    public partial class Login : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["loggedin"])
            {
                Response.Redirect("WorngPage.aspx");
            }

            string email = Request.Form["email"];
            string password = Request.Form["password"];
            if (Request.Form.Get("login") != null)
            {
                if (SiteUtils.IsFilled(password) && SiteUtils.IsEmailValid(email))
                {
                    DataTable user = getValidUserData(email, password);
                    if (user.Rows.Count == 1)
                    {
                        DataRow row = user.Rows[0];
                        Session["loggedin"] = true;
                        Session["isadmin"] = (bool)row["is_admin"];
                        Session["username"] = (string)row["user_name"];
                        Session["email"] = (string)row["user_email"];
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        msg = "Email or password is invalid";
                    }
                }
            }
        }


        protected DataTable getValidUserData(string email, string password)
        {
            string query = $"SELECT * FROM Users WHERE user_email = '{email}' AND user_password = '{password}'";

            return DbHelper.ExecuteSelectQuery(query);
        }
    }
}