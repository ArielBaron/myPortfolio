<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Portfolio.FinalProj.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <form method="POST" action="Logout.aspx">
        <h1>Logout</h1> <br />
        <input type="submit" name="logout" value="logout" />
    </form>
</asp:Content>
