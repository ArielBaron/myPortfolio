<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Portfolio.FinalProj.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <h1>
        Change password
    </h1>
    <h1><%=msg %></h1>
    
    <form  action="ChangePassword.aspx" method="POST">
        <input required = "required" type="email" name="email" placeholder="enter email"   value="<%=Request.Form.Get("email")%>" /> <br /> 
        <input required = "required" type="password" name="oldPassword" placeholder="enter old password" /> <br />
        <input required = "required" type="password" name="newPassword" placeholder="enter new password" /> <br />
        <input type="submit" name="submit" value="submit" />
    </form>
</asp:Content>
