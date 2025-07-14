<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="TicTacToeInJava.aspx.cs" Inherits="Portfolio.FinalProj.TicTacToeInJava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <div>
        <a target="_blank" href="https://github.com/ArielBaron/TicTacToeInJava">
            <img  src="./Assets/github.png" alt="github repo" />
        </a>
        <h1>Tic Tac Toe in Java</h1>
        <p>This is a simple command-line Tic Tac Toe game implemented in Java. The game supports both human-vs-human and human-vs-bot modes with a clean and interactive interface.</p>

        <h2>Features</h2>
        <ul>
            <li>Play Tic Tac Toe with another human or against a bot.</li>
            <li>Clear instructions and user-friendly prompts for moves.</li>
            <li>Automatic validation of moves to prevent overwriting squares.</li>
            <li>Custom logic for determining game results: win, lose, or draw.</li>
            <li>Replay functionality for continuous enjoyment.</li>
        </ul>

        <h2>How It Works</h2>
        <p>The game board consists of 9 squares represented as a list. Players take turns selecting squares to place their mark (X or O). The game ends when a player aligns three of their marks in a row, column, or diagonal, or when all squares are filled without a winner (draw).</p>

        <h2>Game Modes</h2>
        <ol>
            <li><strong>Human vs. Human:</strong> Both players take turns inputting their moves.</li>
            <li><strong>Human vs. Bot:</strong> Play against a bot with simple random-move logic.</li>
        </ol>

        <h2>Instructions</h2>
        <ol>
            <li>Run the program in a terminal using a Java runtime environment.</li>
            <li>Follow the prompts to choose your game mode:
                <ul>
                    <li>Enter <code>11</code> for Human vs. Bot mode.</li>
                    <li>Enter <code>10</code> to reset the game board.</li>
                </ul>
            </li>
            <li>Choose a square to place your mark by entering a number from <code>1</code> to <code>9</code>.</li>
            <li>The game will notify you of the result (win, draw, or continue).</li>
        </ol>

        <h2>Requirements (Only for manual Setup)</h2>
        <ul>
            <li>Java Development Kit (JDK) 8 or higher.</li>
            <li>A terminal or command prompt to run the program.</li>
        </ul>

        <h2>How to Run (Easy Setup)</h2>
        <p>
            <strong>enter this link and press "Run" **</strong> <br />
                <a href="https://onlinegdb.com/EmQlTgmV1" target="_blank">Here</a>
        </p>
        <h2>Or the manual Setup:</h2>
        <ol>
            <li>Download the <code>Main.java</code> file.</li>
            <li>Compile the program using the following command:
                <pre><code>javac Main.java</code></pre>
            </li>
            <li>Run the program:
                <pre><code>java Main</code></pre>
            </li>
        </ol>

    </div>
</asp:Content>

