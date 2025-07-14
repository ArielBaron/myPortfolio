using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio.FinalProj
{
    public partial class Admin : System.Web.UI.Page
    {
        public string msg;
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (!(bool)Session["isadmin"])
                {
                    Response.Redirect("WorngPage.aspx");
                }
                if (Request.QueryString["delete"] == "delete")
                {
                    string[] deletedUsers = Request.QueryString.GetValues("deleteUser");
                    msg = deletedUsers != null ? string.Join("", deletedUsers) + " has been deleted" : "";
                    DeleteUsers(deletedUsers); // Split the emails by comma and delete users
                }
            }
        }
            
        protected void DeleteUsers(string[] userEmails) {
            // SQL query to delete users from the 'users' database based on their email addresses
            foreach (string email in userEmails)
            {
                String deleteUser = "DELETE FROM Users WHERE user_email = '" + email + "';";
                DbHelper.ExecuteNonSelectQuery(deleteUser);
            }
        }
        protected DataTable getUserRegistrations()
        {
            // SQL query to fetch all user registrations from the 'users' database
            String getUserProjects = "SELECT * FROM Users;";
            DataTable dt = DbHelper.ExecuteSelectQuery(getUserProjects);
            return dt;
        }
    }
}