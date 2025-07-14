<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="ProjectsTable.aspx.cs" Inherits="Portfolio.FinalProj.ProjectsTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        th, td, table {
            border: black solid 2px;
            padding: 10px;
        }

        table {
            border-collapse: collapse;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <h1>User Projects</h1>
    <p><%=msg %></p>
    <form action="ProjectsTable.aspx" />
        <table>
            <tr>
                <th>Email</th>
                <th>Programming Language</th>
                <th>Contributors</th>
                <th>Difficulty</th>
                <th>Region</th>
                <th>Description</th>
                <th>Want Design?</th>
                <th>Want Server Hosting?</th>
                <th>Want Marketing?</th>
                <th>Want Code Cleanup?</th>
                <th>Delete?</th>
            </tr>

            <%
                System.Data.DataTable dt = getUserProjects();
                int userProjectsNum = dt.Rows.Count;
                System.Data.DataRow currRow;
                for (int rowIndex = 0; rowIndex < userProjectsNum; rowIndex++)
                {
                    currRow = dt.Rows[rowIndex];
            %>
            <tr>
                <td><%= currRow["email"] %></td>
                <td><%= currRow["progLang"] %></td>
                <td><%= currRow["contributors"] %></td>
                <td><%= currRow["diffcultyRange"] %></td>
                <td><%= currRow["region"] %></td>
                <td><%= currRow["description"] %></td>
                <td><%= Convert.ToBoolean(currRow["wantDesign"]) ? "YES" : "NO" %></td>
                <td><%= Convert.ToBoolean(currRow["wantServerHosting"]) ? "YES" : "NO" %></td>
                <td><%= Convert.ToBoolean(currRow["wantMarketing"]) ? "YES" : "NO" %></td>
                <td><%= Convert.ToBoolean(currRow["wantCodeCleanup"]) ? "YES" : "NO" %></td>
                <td><input type="checkbox" name="deleteProject" value="<%= currRow["email"] %>" /></td>

            </tr>
            <% } %>
        </table>
        <input type="submit" name="delete" value="delete" id="delete"/>
    </>
</asp:Content>
