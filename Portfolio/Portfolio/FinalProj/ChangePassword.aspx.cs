using Portfolio.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio.FinalProj
{
    public partial class ChangePassword : System.Web.UI.Page
    {
         public string msg="";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["loggedin"]) {
                Session["failreason"] = "must login";
                Response.Redirect("WorngPage.aspx");
            }



            string oldPassword = Request.Form["oldPassword"];
            string newPassword = Request.Form["newPassword"];
            string email = Request.Form["email"];


            if (Request.Form["submit"] != null)
            {
                string sessionEmail = ((string)Session["email"]).Trim();
                string requestEmail = email.Trim();

                msg = "Email or passwords are invalid"; // Changes if it is valid
                if (SiteUtils.IsFilled(oldPassword) && (SiteUtils.IsFilled(newPassword) && SiteUtils.IsEmailValid(email)))
                {
                    if (getValidUserData(requestEmail, oldPassword).Rows.Count == 1 ) {
                        // valid email and password for the current session
                        if (sessionEmail == requestEmail) {
                            updatePassword(requestEmail, newPassword);
                            msg = "password changed";
                        }
                        else
                        {
                            msg = "email is not the one you used to login " + email + " " + (string)Session["email"] + (email.Length
                                == ((string)Session["email"]).Length ? " same" : " not same");
                            msg = $"Session: [{sessionEmail}] ({sessionEmail.Length})\n" +
                                  $"Request: [{requestEmail}] ({requestEmail.Length})\n" +
                                  (string.Equals(sessionEmail, requestEmail, StringComparison.OrdinalIgnoreCase) ? "same" : "not same");
                        }
                    }
                }                

                
            }

        }
        protected static void updatePassword(string email,string newPassword)
        {
            string sqlQuery = string.Format(
                "UPDATE users SET user_password = '{0}' WHERE user_email = '{1}'",
                newPassword, email
            );
            DbHelper.ExecuteNonSelectQuery(sqlQuery);
        }
        protected DataTable getValidUserData(string email, string password)
        {
            string query = $"SELECT * FROM Users WHERE user_email = '{email}' AND user_password = '{password}'";

            return DbHelper.ExecuteSelectQuery(query);
        }
    }
}