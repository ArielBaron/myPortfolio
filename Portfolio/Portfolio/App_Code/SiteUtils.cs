using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portfolio.App_Code
{
    public class SiteUtils
    {
        public static bool IsFilled(string input)
        {
            return input != null && input.Trim() != "";
        }
        public static bool IsEmailValid(string email)
        {
            return email.IndexOf("@") > 0 && email.IndexOf("@") < email.Length - 1 && email.Length > 3;
        }
    }
}