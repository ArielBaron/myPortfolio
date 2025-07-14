<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="Leaderboards.aspx.cs" Inherits="Portfolio.FinalProj.Leaderboards" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <h1>The Best Score is <%=Application["highscore"] %></h1>
</asp:Content>
