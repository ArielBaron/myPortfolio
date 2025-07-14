<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Portfolio.FinalProj.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function areInputsValid() {
            const messageElement = document.getElementById("message");
            const userDate = document.getElementById("user-date").value;
            const year = userDate.substring(0, 4);
            const userAge = parseInt(document.getElementById("user-age").value);
            const userName = document.getElementById("user-name").value;
            let message = "";
            //Extra:
            //if (userAge <= 0 || userAge >= 150) {
            //    message += "age ("+userAge+")  must be above 0 and below 150 \n";   
            //} 
            //if (year<1900  || year > 2025) {
            //    message += "Year ("+year+") must be between 1900 to 2025 \n"
            //}
            // What was asked:
            if (strHasSpecialChars(userName)) {
                message += "username must not have Special Chars\n";
            }
            if (userName.trim() !== userName) {
                message +="username must not have Leading Or Trailing Spaces\n"
            }
            message += strHasConsecutiveSpaces(userName) ? // Another way to write if
                "username must not have Consecutive Spaces\n" : "";
            

            
            
            messageElement.innerText = message;
            return message == "";
        }
        function strHasSpecialChars(str) { // Spaces are allowed (following a standart)
            const specialChars = "0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~"; 
            for (let i = 0; i < str.length; i++) {
                if (specialChars.includes(str[i])) {
                    return true;
                }
            }
            return false;
        }
        function strHasConsecutiveSpaces(str) { // can be simplfied: str.includes("  ")
            for (let i = 0; i < str.length - 1; i++) {
                if (str[i] === " " && str[i + 1] === " ") {
                    return true;
                }
            }
            return false;
        }
           
        
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <form action="Register.aspx" method="post" onsubmit="return areInputsValid();">
        <h1>Enter your info to register to my site:</h1>
        <a href="Login.aspx">Already have an account? click here to login!</a>
        <h2><%=msg %> </h2> 
        <p id="message"></p>
        <label>Enter color</label>
        <input required = "required" type="color" name="fav-color" value="<%= Request.Form.Get("fav-color") %>" /><br />
        
        <label>Enter name</label>
        <input required = "required" type="text" name="user-name"  id="user-name" value="<%= Request.Form.Get("user-name") %>" /><br />

        <label>Enter age</label>
        <input required = "required" type="number" name="user-age" id="user-age" value="<%= isSubmitted ? Request.Form.Get("user-age") : "" %>" /><br />
        
        <label>Enter a your birth date</label>
        <input required = "required" type="date" name="birth-date" id="user-date" value="<%= Request.Form.Get("birth-date") %>" /><br />
        
        
        <label>Enter email</label>
        <input required = "required" type="email" name="user-email" value="<%= Request.Form.Get("user-email") %>" /><br />

        
        <label>Enter password</label>
        <input required = "required" type="password" name="user-password" value="<%= Request.Form.Get("user-password") %>" /><br />

        
        <label>Enter telephone</label>
        <input required = "required" type="tel" title="Phone" name="phone-number" value="<%= Request.Form.Get("phone-number") %>" /><br />
 
        
        <label>Enter your favorite fruit (choose 1 from 3)</label><br />
        <input required = "required" type="radio" name="fav-fruit" value="banana" <%= Request.Form.Get("fav-fruit") == "banana" ? "checked" : "" %> />banana <br />
        <input required = "required" type="radio" name="fav-fruit" value="blueberry" <%= Request.Form.Get("fav-fruit") == "blueberry" ? "checked" : "" %> />blueberry<br />
        <input required = "required" type="radio" name="fav-fruit" value="melon" <%= Request.Form.Get("fav-fruit") == "melon" ? "checked" : "" %> />melon<br />

        
        <label>Pick level of satisfaction</label>
        <input required = "required" type="range" name="userReview" min="1" max="10" value="<%= Request.Form.Get("userReview") %>" /><br />

        
        <label>Do you want to get messages to your email</label>
        <input  type="checkbox" name="includeEmail" value="checked" <%= Request.Form.Get("includeEmail") == "checked" ? "checked" : "" %> /><br />

        
        <label>Enter your region</label>
        <select name="region">
            <option value="EU" <%= Request.Form.Get("region") == "EU" ? "selected" : "" %> >EU</option>
            <option value="ASIA" <%= Request.Form.Get("region") == "ASIA" ? "selected" : "" %> >ASIA</option>
            <option value="US" <%= Request.Form.Get("region") == "US" ? "selected" : "" %> >US</option>
            <option value="NA" <%= Request.Form.Get("region") == "NA" ? "selected" : "" %> >NA</option>
        </select><br />

        
        <input  type="reset" value="Reset" />
        <input  type="submit" name="submit" value="Submit" /><br />
    </form>
</asp:Content>

