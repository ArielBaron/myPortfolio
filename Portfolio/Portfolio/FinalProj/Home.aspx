<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Portfolio.FinalProj.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
        .profile-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 20px;
        }

        .profile-picture img {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            border: 5px solid #ccc;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .profile-details {
            margin-top: 20px;
            text-align: center;
            max-width: 600px;
        }

        @media (min-width: 768px) {
            .profile-container {
                flex-direction: row;
                justify-content: center;
                align-items: flex-start;
            }

            .profile-picture {
                margin-right: 20px;
            }

            .profile-details {
                text-align: left;
            }

            .profile-picture img {
                width: 300px;
                height: 300px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <div>
        <div class="profile-container">
            <div class="profile-picture">
                <img src="Assets/PersonalPicture.png" alt="Your Profile Picture">
            </div> 
            <div class="profile-details">
                <h1>Ariel Baron</h1>
                <p><strong>About Me:</strong></p>
                <p>I am a passionate developer skilled in a variety of programming languages and technologies. I enjoy building web applications and solving challenging problems. i am located in Rehovot, Isreal. Here’s more about me:</p>
                <h2>Technical Skills</h2>
                <p>I have hands-on experience with the following technologies:</p>
                <ul>
                    <li><strong>Frontend:</strong> HTML, CSS, JavaScript, React</li>
                    <li><strong>Backend:</strong> Node.js, Express</li>
                    <li><strong>Databases:</strong> Mongoose, MongoDB</li>
                    <li><strong>Other Languages:</strong> Python, Java</li>
                </ul>
                <h2>Hobbies and Interests</h2>
                <p>In addition to coding, I am an avid chess player. I compete in in-person chess tournaments and love strategizing both on and off the board.</p>
                <p>You can view my chess profile for detailed statistics and achievements: <a href="https://www.chess.org.il/Players/Player.aspx?Id=206245" target="_blank">My Chess Profile</a>.</p>
            </div>
        </div>
    </div>
</asp:Content>

