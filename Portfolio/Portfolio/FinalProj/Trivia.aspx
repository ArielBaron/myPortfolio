<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="Trivia.aspx.cs" Inherits="Portfolio.FinalProj.Trivia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .result-box {
            text-align: center;
            margin-top: 20px;
            border: 2px solid #ccc;
            padding: 20px;
            border-radius: 10px;
            background-color: #f9f9f9;
        }

        .result-title {
            color: #2c3e50;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .result-score {
            color: #27ae60;
        }

        .result-message {
            font-size: 18px;
            color: #7f8c8d;
        }
        input[type="radio"] {
            transform: scale(3); /* Scale the radio button to 1.5x its size */
                       
            margin: 13px;       /* Add some space between the radio button and label */
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <div>
        <form method="GET" action="Trivia.aspx">
            <%=msg %>
            <%
                if (isSubmitted) {
                    if (bools[0]) {
                        Response.Write(correctRes);
                    } else {
                        Response.Write(incorrectRes);
                    }
                }
            %>
            
            <h1>1. What programming langs do i use:</h1>
            <input required = "required" type="radio" name="q1" value="a" <%= (char.ToLower(answers[0]) == 'a') ? checkedStr : "" %> />
            <label>PYTHON Java HTML JS</label> <br />
            <input required = "required" type="radio" name="q1" value="B" <%= (char.ToLower(answers[0]) == 'b') ? checkedStr : "" %> />
            <label>JS HTML CSS PYTHON Node.js MongosseDB Express Puppter React</label> <br />
            <input required = "required" type="radio" name="q1" value="c" <%= (char.ToLower(answers[0]) == 'c') ? checkedStr : "" %> />
            <label>HTML Scala Java HTML JS CSS</label> <br />
            <input required = "required" type="radio" name="q1" value="d" <%= (char.ToLower(answers[0]) == 'd') ? checkedStr : "" %> />
            <label>Hebrew Russian Romanian</label> <br />

            <%
                if (isSubmitted) {
                    if (bools[1]) {
                        Response.Write(correctRes);
                    } else {
                        Response.Write(incorrectRes);
                    }
                }
            %>
            <h1>2. Where do I live:</h1>
            <input required = "required" type="radio" name="q2" value="A" <%= (char.ToLower(answers[1]) == 'a') ? checkedStr : "" %> />
            <label>Rehovot</label> <br />
            <input required = "required" type="radio" name="q2" value="b" <%= (char.ToLower(answers[1]) == 'b') ? checkedStr : "" %> />
            <label>Tel Aviv</label> <br />
            <input required = "required" type="radio" name="q2" value="c" <%= (char.ToLower(answers[1]) == 'c') ? checkedStr : "" %> />
            <label>Moscow</label> <br />
            <input required = "required" type="radio" name="q2" value="d" <%= (char.ToLower(answers[1]) == 'd') ? checkedStr : "" %> />
            <label>Berlin</label> <br />

            <%
                if (isSubmitted) {
                    if (bools[2]) {
                        Response.Write(correctRes);
                    } else {
                        Response.Write(incorrectRes);
                    }
                }
            %>
            <h1>3. What's my first project:</h1>
            <input required = "required" type="radio" name="q3" value="a" <%= (char.ToLower(answers[2]) == 'a') ? checkedStr : "" %> />
            <label>BetterMashovLive</label> <br />
            <input required = "required" type="radio" name="q3" value="b" <%= (char.ToLower(answers[2]) == 'b') ? checkedStr : "" %> />
            <label>FlashCards</label> <br />
            <input required = "required" type="radio" name="q3" value="C" <%= (char.ToLower(answers[2]) == 'c') ? checkedStr : "" %> />
            <label>Calc</label> <br />
            <input required = "required" type="radio" name="q3" value="d" <%= (char.ToLower(answers[2]) == 'd') ? checkedStr : "" %> />
            <label>TicTacToe</label> <br />

            <%
                if (isSubmitted) {
                    if (bools[3]) {
                        Response.Write(correctRes);
                    } else {
                        Response.Write(incorrectRes);
                    }
                }
            %>
            <h1>4. What's my rating on chess.com:</h1>
            <input required = "required" type="radio" name="q4" value="A" <%= (char.ToLower(answers[3]) == 'a') ? checkedStr : "" %> />
            <label>between 1100 to 1600</label> <br />
            <input required = "required" type="radio" name="q4" value="b" <%= (char.ToLower(answers[3]) == 'b') ? checkedStr : "" %> />
            <label>between 500 to 1000</label> <br />
            <input required = "required" type="radio" name="q4" value="c" <%= (char.ToLower(answers[3]) == 'c') ? checkedStr : "" %> />
            <label>100</label> <br />
            <input required = "required" type="radio" name="q4" value="d" <%= (char.ToLower(answers[3]) == 'd') ? checkedStr : "" %> />
            <label>between 2000 to 3000</label> <br />

            <%
                if (isSubmitted) {
                    if (bools[4]) {
                        Response.Write(correctRes);
                    } else {
                        Response.Write(incorrectRes);
                    }
                }
            %>
            <h1>5. Where do I study:</h1>
            <input required = "required" type="radio" name="q5" value="a" <%= (char.ToLower(answers[4]) == 'a') ? checkedStr : "" %> />
            <label>Ort</label> <br />
            <input required = "required" type="radio" name="q5" value="B" <%= (char.ToLower(answers[4]) == 'b') ? checkedStr : "" %> />
            <label>Katzir</label> <br />
            <input required = "required" type="radio" name="q5" value="c" <%= (char.ToLower(answers[4]) == 'c') ? checkedStr : "" %> />
            <label>de Shalit</label> <br />
            <input required = "required" type="radio" name="q5" value="d" <%= (char.ToLower(answers[4]) == 'd') ? checkedStr : "" %> />
            <label>madaim</label> <br />

            <%
                if (isSubmitted) {
                    if (bools[5]) {
                        Response.Write(correctRes);
                    } else {
                        Response.Write(incorrectRes);
                    }
                }
            %>
            <h1>6. What's my gmail:</h1>
            <input required = "required" type="radio" name="q6" value="a" <%= (char.ToLower(answers[5]) == 'a') ? checkedStr : "" %> />
            <label>arielbaron@gmail.com</label> <br />
            <input required = "required" type="radio" name="q6" value="b" <%= (char.ToLower(answers[5]) == 'b') ? checkedStr : "" %> />
            <label>TheArielOfTheBaronOfTheGreatPlaceForTheFuture@gmail.com</label> <br />
            <input required = "required" type="radio" name="q6" value="c" <%= (char.ToLower(answers[5]) == 'c') ? checkedStr : "" %> />
            <label>aarieelbbar80@gmail.com</label> <br />
            <input required = "required" type="radio" name="q6" value="D" <%= (char.ToLower(answers[5]) == 'd') ? checkedStr : "" %> />
            <label>arielbar80@gmail.com</label> <br />

            <%
                if (isSubmitted) {
                    if (bools[6]) {
                        Response.Write(correctRes);
                    } else {
                        Response.Write(incorrectRes);
                    }
                }
            %>
            <h1>7. How many GitHub repos do I currently have:</h1>
            <input required = "required" type="radio" name="q7" value="a" <%= (char.ToLower(answers[6]) == 'a') ? checkedStr : "" %> />
            <label>3-5 repos</label> <br />
            <input required = "required" type="radio" name="q7" value="b" <%= (char.ToLower(answers[6]) == 'b') ? checkedStr : "" %> />
            <label>1000+ repos</label> <br />
            <input required = "required" type="radio" name="q7" value="C" <%= (char.ToLower(answers[6]) == 'c') ? checkedStr : "" %> />
            <label>18 - 50 repos</label> <br />
            <input required = "required" type="radio" name="q7" value="d" <%= (char.ToLower(answers[6]) == 'd') ? checkedStr : "" %> />
            <label>5 - 8 repos</label> <br />

            <%
                if (isSubmitted) {
                    if (bools[7]) {
                        Response.Write(correctRes);
                    } else {
                        Response.Write(incorrectRes);
                    }
                }
            %>
            <h1>8. In what grade am I:</h1>
            <input required = "required" type="radio" name="q8" value="A" <%= (char.ToLower(answers[7]) == 'a') ? checkedStr : "" %> />
            <label>10th grade</label> <br />
            <input required = "required" type="radio" name="q8" value="b" <%= (char.ToLower(answers[7]) == 'b') ? checkedStr : "" %> />
            <label>12th grade</label> <br />
            <input required = "required" type="radio" name="q8" value="c" <%= (char.ToLower(answers[7]) == 'c') ? checkedStr : "" %> />
            <label>2nd grade</label> <br />
            <input required = "required" type="radio" name="q8" value="d" <%= (char.ToLower(answers[7]) == 'd') ? checkedStr : "" %> />
            <label>9th grade</label> <br />

            <%
                if (isSubmitted) {
                    if (bools[8]) {
                        Response.Write(correctRes);
                    } else {
                        Response.Write(incorrectRes);
                    }
                }
            %>
            <h1>9. What two things do I study in school:</h1>
            <input required = "required" type="radio" name="q9" value="a" <%= (char.ToLower(answers[8]) == 'a') ? checkedStr : "" %> />
            <label>Websites and functional programming</label> <br />
            <input required = "required" type="radio" name="q9" value="b" <%= (char.ToLower(answers[8]) == 'b') ? checkedStr : "" %> />
            <label>Databases and backend</label> <br />
            <input required = "required" type="radio" name="q9" value="c" <%= (char.ToLower(answers[8]) == 'c') ? checkedStr : "" %> />
            <label>Math and literature</label> <br />
            <input required = "required" type="radio" name="q9" value="D" <%= (char.ToLower(answers[8]) == 'd') ? checkedStr : "" %> />
            <label>Websites and object-oriented programming (Java)</label> <br />

            <%
                if (isSubmitted) {
                    if (bools[9]) {
                        Response.Write(correctRes);
                    } else {
                        Response.Write(incorrectRes);
                    }
                }
            %>
            <h1>10. What's my biggest project out of the four on this site (by number of files):</h1>
            <input required = "required" type="radio" name="q10" value="A" <%= (char.ToLower(answers[9]) == 'a') ? checkedStr : "" %> />
            <label>BetterMashovLive</label> <br />
            <input required = "required" type="radio" name="q10" value="b" <%= (char.ToLower(answers[9]) == 'b') ? checkedStr : "" %> />
            <label>FlashCards</label> <br />
            <input required = "required" type="radio" name="q10" value="c" <%= (char.ToLower(answers[9]) == 'c') ? checkedStr : "" %> />
            <label>Calc</label> <br />
            <input required = "required" type="radio" name="q10" value="d" <%= (char.ToLower(answers[9]) == 'd') ? checkedStr : "" %> />
            <label>TicTacToe</label> <br />

            <div class="result-box">
                <h2 class="result-title">

                     <%=isSubmitted? "Your Grade: <span class='result-score'>" + bools.Count(b => b) + "</span> / 10" : "Here Will be you Result"%>
                </h2>
                <p class="result-message">
                    <%=isSubmitted? bools.Count(b => b) < 10? "Excellent effort! Review your mistakes and aim for perfection next time." : "Great job! you got every question correct." : ""%>
                </p>
            </div>

            <input  type="submit" name="submit" value="Submit" />
            <input  type="submit" name="reset" value="Reset" />
        </form>
    </div>
</asp:Content>
