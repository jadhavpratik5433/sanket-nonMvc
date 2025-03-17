<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="WebApplication3.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        About
    </h2>
    <p>
         <div class="container mt-4">
        <h1>Books List</h1>
        <hr />
        <a href="Create.aspx" class="btn btn-success float-end">Create</a>
        <table class="table table-responsive table-striped table-hover align-middle">
            <thead>
                <tr class="text-center">
                    <th>Book Title</th>
                    <th>Book Description</th>
                    <th>Book Author</th>
                    <th>Actions</th>
                </tr>
            </thead>
           <tbody>
                <% foreach (var book in Books) { %>
                <tr class="text-center">
                    <td><%= book.BookTitle %></td>
                    <td><%= book.BookDescription %></td>
                    <td><%= book.BookAuthor %></td>
                    <td>
                        <a href="Edit.aspx?id=<%= book.BookId %>" class="btn btn-primary">Edit</a>
                        <a href="Delete.aspx?id=<%= book.BookId %>" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>
    </p>
</asp:Content>
