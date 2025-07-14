<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Portfolio.FinalProj.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .img-album {
            display: grid;
            grid-template-columns: auto auto;
        }
        .img-item {
            width: 300px;
            height: 200px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <div>
        <h1>Contact info:</h1> 
        <p>For coding stuff contact me at my <a href="https://github.com/ArielBaron">GitHub</a> <br />
            For personal messages contact me at my Gmail: (arielbar80@gmail.com)
        </p>
        <button onclick="window.open('https://mail.google.com/mail/?view=cm&fs=1&to=arielbar80@gmail.com&su=Hello&body=Hi%20Ariel!%20Looking%20forward%20to%20hearing%20from%20you!', '_blank')">
            Send Email From Gmail
        </button>
        <br />
        <a href="./Register.aspx">Register</a>
        <br />
        <a href="./AddItem.aspx">Add your project</a>

        <h1>"Social media":</h1>

        <div class="img-album">
            <a target="_blank" href="https://lichess.org/@/arielbargmailcom">
                <img src="./Assets/lichess.svg" alt="lichess" class="img-item"/>
            </a>

            <a target="_blank" href="https://www.youtube.com/channel/UCHYDuGbBe7ag407IhRq0Sog">
                <img src="./Assets/youtube.png" alt="youtube" class="img-item" />
            </a>
            <a target="_blank" href="https://www.chess.com/member/gmapksjfohgu"> 
                <img target="_blank" src="./Assets/chesscom.png" alt="chess.com" class="img-item" />
            </a>
            <a target="_blank" href="https://www.chess.org.il/Players/Player.aspx?Id=206245">
                <img target="_blank" src="./Assets/ischess.png" alt="ischess" class="img-item" />
            </a>
        </div>
    </div>
</asp:Content>

