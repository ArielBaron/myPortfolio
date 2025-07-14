using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Portfolio.FinalProj
{
    public partial class Trivia : System.Web.UI.Page
    {
        public bool[] bools;
        public char[] answers;
        public bool isSubmitted;
        public string correctRes = "<h2 style=\"color: green\">Correct Answer</h2>";
        public string incorrectRes = "<h2 style=\"color: red\">Incorrect Answer</h2>";
        public string checkedStr = "checked='checked'";
        public string msg = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!(bool)Session["loggedin"])
            {
                Session["failreason"] = "must login";
                Response.Redirect("WorngPage.aspx");
            }
            bools = new bool[10];
            answers = new char[10];

            for (int i = 0; i < answers.Length; i++)
            {
                answers[i] = 'u'; // Initialize answers to 'u' (unanswered)
            }

            for (int i = 0; i < 10; i++)
            {
                bools[i] = false; // Initialize bools to false (not answered)
            }

            string curAnswerVal;
            if (Request.QueryString.Get("resetart") == "Reset") {
                restPage();
                
            }
            isSubmitted = Request.QueryString.Get("submit") == "Submit";
            
            if (isSubmitted)
            {
                for (int i = 0; i < 10; i++)
                {
                    curAnswerVal = Request.QueryString.Get("q" + (i + 1).ToString()); // Query string uses "q1", "q2", ..., "q10"

                    if (!string.IsNullOrEmpty(curAnswerVal))
                    {
                        answers[i] = curAnswerVal[0]; // Store the first character of the answer

                        if (curAnswerVal[0] >= 'A' && curAnswerVal[0] <= 'Z') // if uppercase correct
                        {
                            bools[i] = true; // Mark as answered
                        }
                    }
                    else if (curAnswerVal == null)
                    {
                        msg += $"{i + 1}, hasnt been chosen " + curAnswerVal;
                        isSubmitted = false;
                    }
                }
                if (bools.Count(b => b) > (int)Application["highscore"]) {
                    Application["highscore"] = bools.Count(b => b);
                }
            }
        }
        protected void restPage() {
            Response.Redirect("Trivia.aspx");
            

        }
    }
}