using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio.FinalProj
{
    public partial class ProjectsTable : System.Web.UI.Page
    {
        public string msg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["isadmin"])
            {
                Response.Redirect("WorngPage.aspx");
            }
            if (Request.QueryString["delete"] == "delete")
            {
                string[] deletedProjects = Request.QueryString.GetValues("deleteProject");

                if (deletedProjects != null)
                {
                    msg = string.Join("", deletedProjects) + " has been deleted";
                    DeleteUserProjects(deletedProjects); // Only call if not null
                }
                else
                {
                    msg = "";
                }
            }
        }

        protected void DeleteUserProjects(string[] ProjectsEmails)
        {
            foreach (string email in ProjectsEmails)
            {
                string deleteUser = "DELETE FROM UserProjects WHERE email = '" + email + "';";
                DbHelper.ExecuteNonSelectQuery(deleteUser);
            }
        }

        protected DataTable getUserProjects()
        {
            string getUserProjects = "SELECT * FROM UserProjects;";
            DataTable dt = DbHelper.ExecuteSelectQuery(getUserProjects);
            return dt;
        }
    }
}
