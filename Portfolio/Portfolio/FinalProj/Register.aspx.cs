using Portfolio.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio.FinalProj
{
    public partial class Register : System.Web.UI.Page
    {
        public string msg = "";
        public bool includeEmail;
        public string color, name = "", birthDate, email, password, telephone, favFruit, region, age = "";
        public int rating;
        public bool isSubmitted;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if ((bool)Session["loggedin"])
            {
                Response.Redirect("WorngPage.aspx");
            }
            isSubmitted = Request.Form.Get("submit") == "Submit";
            if (isSubmitted)
            {
                color = Request.Form.Get("fav-color");
                name = Request.Form.Get("user-name");
                age = Request.Form.Get("user-age");
                birthDate = Request.Form.Get("birth-date");
                email = Request.Form.Get("user-email");
                password = Request.Form.Get("user-password");
                telephone = Request.Form.Get("phone-number");
                favFruit = Request.Form.Get("fav-fruit");
                region = Request.Form.Get("region");
                rating = int.Parse(Request.Form.Get("userReview"));
                                  
                includeEmail = Request.Form.Get("includeEmail") == "checked";
                // Validation
                if (!SiteUtils.IsFilled(email) || !SiteUtils.IsFilled(password) || !SiteUtils.IsFilled(telephone))
                {
                    msg = "Email, password, and phone number are mandatory.";
                }
                else if (!SiteUtils.IsEmailValid(email))
                {
                    msg = "Email is invalid.";
                }
                else
                {
                    addUserRegistration();
                }
            }
        }

        protected void addUserRegistration()
        {
            string color = SiteUtils.IsFilled(Request.Form.Get("fav-color"))
                ? "'" + Request.Form.Get("fav-color") + "'"
                : "NULL";

            string name = SiteUtils.IsFilled(Request.Form.Get("user-name"))
                ? "'" + Request.Form.Get("user-name") + "'"
                : "NULL";

            string age = SiteUtils.IsFilled(Request.Form.Get("user-age"))
                ? "'" + Request.Form.Get("user-age") + "'"
                : "NULL";

            string birthDate = SiteUtils.IsFilled(Request.Form.Get("birth-date"))
                ? "'" + Request.Form.Get("birth-date") + "'"
                : "NULL";

            string email = SiteUtils.IsFilled(Request.Form.Get("user-email"))
                ? "'" + Request.Form.Get("user-email") + "'"
                : "NULL";

            string password = SiteUtils.IsFilled(Request.Form.Get("user-password"))
                ? "'" + Request.Form.Get("user-password") + "'"
                : "NULL";

            string telephone = SiteUtils.IsFilled(Request.Form.Get("phone-number"))
                ? "'" + Request.Form.Get("phone-number") + "'"
                : "NULL";

            string favFruit = SiteUtils.IsFilled(Request.Form.Get("fav-fruit"))
                ? "'" + Request.Form.Get("fav-fruit") + "'"
                : "NULL";

            string userReview = SiteUtils.IsFilled(Request.Form.Get("userReview"))
                ? "'" + Request.Form.Get("userReview") + "'"
                : "NULL";

            string includeEmail = Request.Form.Get("includeEmail") == "checked" ? "'TRUE'" : "'FALSE'";

            string region = SiteUtils.IsFilled(Request.Form.Get("region"))
                ? "'" + Request.Form.Get("region") + "'"
                : "NULL";

            string insertQuery = "INSERT INTO Users (fav_color, user_name, user_age, birth_date, user_email, user_password, phone_number, fav_fruit, user_review, include_email, region, is_admin) " +
                                 "VALUES (" + color + ", " + name + ", " + age + ", " + birthDate + ", " + email + ", " + password + ", " + telephone + ", " + favFruit + ", " + userReview + ", " + includeEmail + ", " + region + ", 'FALSE')";

            int rowsAffected = DbHelper.ExecuteNonSelectQuery(insertQuery);

            if (rowsAffected == 1)
            {
                msg = "User registered successfully!";
            }
            else
            {
                msg = "Failed to register user.";
            }
        }

    }
}
