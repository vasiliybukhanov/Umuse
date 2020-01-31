<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminNavbar.ascx.cs" Inherits="WebApplication.Controls.AdminNavbar" %>

<nav class="navbar fixed-top navbar-dark d-flex justify-content-around navbar-expand" style="background-color: #666699;">
    <a class="navbar-brand" href="~/HomeAdmin.aspx">
        <img src="/Images/logo.png" width="60" height="60" class="d-inline-block" alt="Logo">
        <h2 class="d-inline block text-white align-middle">Umuse Admin</h2>
    </a>
    <div class="nav-item">
        <a href="~/Default.aspx?signout=true" class="btn text-white" role="button" style="background-color: orange;" runat="server">Sign Out
        </a>
    </div>
</nav>
