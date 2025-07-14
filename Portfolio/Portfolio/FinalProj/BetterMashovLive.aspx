<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="BetterMashovLive.aspx.cs" Inherits="Portfolio.FinalProj.BetterMashovLive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .img-album{
              display: grid;
              grid-template-columns: auto  auto auto;

        }
        .img-item{
            width: 300px;
            height: 250px;
            margin-left: 5px;
            margin-top: 20px;
        }
        .img-item:hover {
            transform: scale(1.5);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <a target="_blank" href="https://github.com/ArielBaron/BetterMashovLive">
        <img  src="./Assets/github.png" alt="github repo" />
    </a>
    <h1>Grades, Behavior and TimeTable Management System</h1>
    <p>
        This project is a website using <a target="_blank" href="https://npm.io/package/mashov-api">mashov api</a> that allows users to view and sort student grades And Behaviors based on various criteria such as date, grade, subject, and teacher.

        In addtion it alows you see your current timetable  by the day and by subject for each hour.

        The system provides a user-friendly interface for managing and displaying grades data.

    </p>
    <h1>How To Run</h1> 
    <p>
        All you need to do is simply run Server.js using node. <br />
        and in addtion in MashovData.json there is all of the steps to get the info needed for login
    </p>
    <h1>I Now Have a Website it's Currently is only open by request to me (visit the Contact page for more info)</h1>
    <a target="_blank" href="https://bettermashovlive.onrender.com">https://bettermashovlive.onrender.com</a>
    <h1>Some Screenshots: (hover to zoom)</h1>
    <div class="img-album">
        <img src="./Assets/BetterMashovLive1.png" class="img-item" alt="Alternate Text" />
        <img src="./Assets/BetterMashovLive2.png" class="img-item" alt="Alternate Text" />
        <img src="./Assets/BetterMashovLive3.png" class="img-item" alt="Alternate Text" />
        <img src="./Assets/BetterMashovLive4.png" class="img-item" alt="Alternate Text" />
        <img src="./Assets/BetterMashovLive5.png" class="img-item" alt="Alternate Text" />
        <img src="./Assets/BetterMashovLive6.png" class="img-item" alt="Alternate Text" />
   </div>



</asp:Content>
