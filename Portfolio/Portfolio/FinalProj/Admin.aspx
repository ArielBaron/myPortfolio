<%@ Page Title="" Language="C#" MasterPageFile="~/FinalProj/Master.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Portfolio.FinalProj.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        th, td, table {
            border: black solid 2px;
            padding: 10px;
        }

        table {
            border-collapse: collapse;
        }

        img {
            width: 150px;
            height: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <h1>User Registrations</h1>
    <p><%=msg %></p>
    <form method="GET" action="Admin.aspx">
        <table>
            <tr>
                <th>Email</th>
                <th>Name</th>
                <th>Age</th>
                <th>Birth Date</th>
                <th>Phone Number</th>
                <th>Favorite Fruit</th>
                <th>Review</th>
                <th>Receive Email?</th>
                <th>Region</th>
                <th>is admin?</th>
                <th>Delete?</th>
            </tr>

            <%
                System.Data.DataTable dt = getUserRegistrations();
                int userRegistrationsNum = dt.Rows.Count;
                System.Data.DataRow currRow;
                for (int rowIndex = 0; rowIndex < userRegistrationsNum; rowIndex++)
                {
                    currRow = dt.Rows[rowIndex];
            %>
            <tr>

                <td><%= currRow["user_email"] %></td>
                <td><%= currRow["user_name"] %></td>
                <td><%= currRow["user_age"] %></td>
                <td><%= currRow["birth_date"] %></td>
                <td><%= currRow["phone_number"] %></td>
                <td><%= currRow["fav_fruit"] %></td>
                <td><%= currRow["user_review"] %></td>
                <td><%= Convert.ToBoolean(currRow["include_email"]) ? "YES" : "NO" %></td>
                <td><%= currRow["region"] %></td>
                <td><%= (bool)currRow["is_admin"]? "YES" : "NO" %></td>
                <td><input type="checkbox" name="deleteUser" value="<%= currRow["user_email"] %>" /></td>
            </tr>

            <% } %>
        </table>
        <input type="submit" name="delete" value="delete" id="delete"/>
    </form>

</asp:Content>
