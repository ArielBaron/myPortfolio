using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Portfolio
{
    public class Global : System.Web.HttpApplication
    {
        void Session_Start(object sender, EventArgs e)
        {
            Session["loggedin"] = false;
            Session["username"] = "guest";
            Session["isadmin"] = false;
            Session["email"] = "";
            Session["failreason"] = "";

        }

        void Session_End(object sender, EventArgs e)
        {
            Session["loggedin"] = false;
            Session["username"] = "guest";
            Session["isadmin"] = false;
            Session["email"] = "";
            Session["failreason"] = "";

        }

        void Application_Start(object sender, EventArgs e)
        {
            Application["highscore"] = 0;   
        }
        void Application_End(object sender, EventArgs e)
        {
            Application["highscore"] = 0;
        }
    }
}