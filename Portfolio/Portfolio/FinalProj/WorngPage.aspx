<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WorngPage.aspx.cs" Inherits="Portfolio.FinalProj.WorngPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Access Denied</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 100px;
            background-color: #f9f9f9;
        }
        .message {
            font-size: 24px;
            color: #cc0000;
        }
        .link {
            margin-top: 20px;
            display: block;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="message">
            ❌  access denied due to the folowing reason:
            <%=Session["failreason"] %>
        </div>
        <%if ((String)Session["failreason"] != "must login")
            {
                Response.Write("        <a class=\"link\" href=\"Login.aspx\">🔁 Return to Login</a>\r\n");
            } 
        %>
        <a class="link" href="Home.aspx">🏠 Return to Home</a>
    </form>
</body>
</html>
