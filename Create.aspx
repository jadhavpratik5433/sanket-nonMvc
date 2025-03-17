<%@ Page Title="Book Create" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Create.aspx.cs" Inherits="WebApplication3.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="container mt-4">
        <h1>Create Book</h1>
        <hr />
        <form method="post">
            <div class="form-group">
                <label>Book Title:</label>
                <input type="text" name="BookTitle" class="form-control" required />
            </div>
            <div class="form-group">
                <label>Book Description:</label>
                <input type="text" name="BookDescription" class="form-control" required />
            </div>
            <div class="form-group">
                <label>Book Author:</label>
                <input type="text" name="BookAuthor" class="form-control" required />
            </div>
            <br />
            <button type="submit" class="btn btn-success">Create</button>
        </form>
    </div>
</asp:Content>
