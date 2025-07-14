<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Portfolio.FinalProj.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <%=msg %>
    <form action="Login.aspx" method="post">
        <input required="required" type="email" name="email" placeholder="enter email"  
               value="<%= Request.Form.Get("email") %>" /> <br />
        <input required="required" type="password" name="password" placeholder="enter password"/> <br />
        <input type="submit" name="login" id="login" value="login" />
    </form>

    <a href="Register.aspx">Don't have an account? Register here!</a>
</asp:Content>

