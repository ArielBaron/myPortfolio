using Portfolio.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio.FinalProj
{
    public partial class AddItem : System.Web.UI.Page
    {
        public string Msg = "";
        public string proglang = "", contributors = "", email = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["loggedin"])
            {
                Response.Redirect("WorngPage.aspx");
            }
            if (Request.QueryString.Get("submit") != null)
            {
                proglang = Request.QueryString.Get("prog-lang");
                email = Request.QueryString.Get("email");
                if (!SiteUtils.IsFilled(proglang) || !SiteUtils.IsFilled(email))
                {
                    Msg += "missing: progrmaing lang or email";
                }
                else
                {
                    addUserProject();
                    // do code
                }
            }

        }
        protected void addUserProject()
        {
            string email = SiteUtils.IsFilled(Request.QueryString.Get("email"))
                           ? "'" + Request.QueryString.Get("email") + "'"
                           : "NULL";

            string proglang = SiteUtils.IsFilled(Request.QueryString.Get("prog-lang"))
                              ? "'" + Request.QueryString.Get("prog-lang") + "'"
                              : "NULL";

            string contributors = SiteUtils.IsFilled(Request.QueryString.Get("contributors-amount"))
                                   ? "'" + Request.QueryString.Get("contributors-amount") + "'"
                                   : "NULL";

            string projName = SiteUtils.IsFilled(Request.QueryString.Get("project-name"))
                              ? "'" + Request.QueryString.Get("project-name") + "'"
                              : "NULL";
            string region = SiteUtils.IsFilled(Request.QueryString.Get("region"))
                              ? "'" + Request.QueryString.Get("region") + "'"
                              : "NULL";
            string diffcultyRange = SiteUtils.IsFilled(Request.QueryString.Get("diffcultyRange"))
                              ? "'" + Request.QueryString.Get("diffcultyRange") + "'"
                              : "NULL";
            string wantDesign = SiteUtils.IsFilled(Request.QueryString.Get("design"))
                                ? "'TRUE'"
                                : "'FALSE'";

            string wantCodeCleanup = SiteUtils.IsFilled(Request.QueryString.Get("code-cleanup"))
                                ? "'TRUE'"
                                : "'FALSE'";

            string wantServerHosting = SiteUtils.IsFilled(Request.QueryString.Get("server-hosting"))
                    ? "'TRUE'"
                    : "'FALSE'";

            string wantMarketing = SiteUtils.IsFilled(Request.QueryString.Get("marketing"))
                    ? "'TRUE'"
                    : "'FALSE'";
            string description = SiteUtils.IsFilled(Request.QueryString.Get("description"))
                    ? "'" + Request.QueryString.Get("description") + "'"
                    : "NULL";

            string addUserProject = "INSERT INTO UserProjects (email, proglang, projName, contributors, region, diffcultyRange, description, wantDesign, wantCodeCleanup, wantMarketing, wantServerHosting) " +
                                    "VALUES (" + email + ", " + proglang + ", " + projName + ", " + contributors + ", " + region + ", " + diffcultyRange + ", " + description + ", " + wantDesign + ", " + wantCodeCleanup + ", " + wantMarketing + ", " + wantServerHosting + ")";

            int numOfRowsAffected = DbHelper.ExecuteNonSelectQuery(addUserProject);

            if (numOfRowsAffected == 1)
            {
                Msg = "Database activated!";
            }
        }

    }
}
