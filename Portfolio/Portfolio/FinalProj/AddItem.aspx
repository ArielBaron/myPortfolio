<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="Portfolio.FinalProj.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <form method="GET" action="AddItem.aspx" >
        <h2><%= Msg %></h2>
        <table>
            <tr>
                <td>
                    <label for="project-name">Enter Your project name:</label>
                </td>
                <td>
                    <input required = "required" type="text" name="project-name" value="<%= Request.QueryString.Get("project-name") %>" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <textarea name="description" required = "required" placeholder="Enter short description"><%= Request.QueryString.Get("description") %></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <label>How diffcult is it?</label>
                </td>
                <td>
                    <input required = "required" type="range" name="diffcultyRange" value="<%= Request.QueryString.Get("diffculty") %>" min="1" max="5" />
                </td>
            </tr>
            <tr>
                <td>
                    <label>Enter email:</label>
                </td>
                <td>
                    <input required = "required" type="email" name="email" value="<%=Request.QueryString.Get("email") %>"/>
                </td>
            </tr>
            <tr>
                <td>
                    <label>whats your region? </label>
                </td>
                <td>
                    
                    <input  type="radio" name="region" value="Varied"  <%= Request.QueryString.Get("region") == "varied" || Request.QueryString.Get("region")== null ? "checked" : "" %>/>Varied <br />
                    <input  type="radio" name="region" value="NA"  <%= Request.QueryString.Get("region") == "NA"  ? "checked" : "" %>/>NA <br />
                    <input  type="radio" name="region" value="Aisa" <%= Request.QueryString.Get("region") == "Aisa" ? "checked" : "" %> /> Aisa  <br />
                    <input  type="radio" name="region" value="Europe" <%= Request.QueryString.Get("region") == "Europe" ? "checked" : "" %> /> Europe  <br />
                    <input  type="radio" name="region" value="MiddleEast" <%= Request.QueryString.Get("region") == "MiddleEast" ? "checked" : "" %> /> MiddleEast  <br />
                    <input  type="radio" name="region" value="Oceania" <%= Request.QueryString.Get("region") == "Oceania" ? "checked" : "" %> /> Oceania <br />
                </td>
            </tr>
            <tr>
                <td>
                    <label>Enter amount of contributors</label>
                </td>
                <td>
                    <input required = "required" type="number" name="contributors-amount" value="<%= Request.QueryString.Get("contributors-amount") %>"/>
                </td>
            </tr>
            <tr>
                <td>
                    <label>what languge is your project built in (we only support these)</label>
                </td>
                <td>
                    <select  name="prog-lang"> 
                        <option <%=Request.QueryString.Get("prog-lang") == "python"? "selected" : "" %> value="python">python</option>
                        <option <%=Request.QueryString.Get("prog-lang") == "java"? "selected" : "" %> value="java">java</option>
                        <option <%=Request.QueryString.Get("prog-lang") == "node"? "selected" : "" %> value="node">node.js</option>
                        <option <%=Request.QueryString.Get("prog-lang") == "html"? "selected" : "" %> value="html">html, css, js</option>
                        <option <%=Request.QueryString.Get("prog-lang") == "react"? "selected" : "" %> value="react">React</option>
                        <option <%=Request.QueryString.Get("prog-lang") == "php"? "selected" : "" %> value="php">PHP</option>
                        <option <%=Request.QueryString.Get("prog-lang") == "c"? "selected" : "" %> value="c">C</option>                 
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <label>wanted services:</label>
                </td>
                <td>
                  <input  type="checkbox" name="code-cleanup" value="checked" 
                  <%= Request.QueryString.Get("code-cleanup") == "checked" ? "checked" : "" %> /> code-cleanup

                <input  type="checkbox" name="server-hosting" value="checked" 
                  <%= Request.QueryString.Get("server-hosting") == "checked" ? "checked" : "" %> /> server-hosting

                <input  type="checkbox" name="design" value="checked" 
                  <%= Request.QueryString.Get("design") == "checked" ? "checked" : "" %> /> design

                <input  type="checkbox" name="marketing" value="checked" 
                  <%= Request.QueryString.Get("marketing") == "checked" ? "checked" : "" %> /> marketing
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input  type="submit" name="submit" value="Submit" />
                </td>
            </tr>          
        </table>
    </form>
</asp:Content>
