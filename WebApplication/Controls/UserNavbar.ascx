<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserNavbar.ascx.cs" Inherits="WebApplication.Controls.UserNavbar" %>

<nav class="navbar fixed-top navbar-dark d-flex justify-content-around navbar-expand" style="background-color: #666699;">
    <a class="navbar-brand" href="~/">
        <img src="/Images/logo.png" width="60" height="60" class="d-inline-block" alt="Logo">
        <h2 class="d-inline block text-white align-middle">Umuse</h2>
    </a>
    <div class="form-inline">
        <input class="form-control mr-2" type="search" placeholder="Tracks, albums, genres, artists..." aria-label="Search">
        <button class="btn my-2" style="background-color: orange" type="submit">Search</button>
    </div>
    <div class="nav-item dropdown">       
        <asp:HyperLink class="btn dropdown-toggle text-white" NavigateUrl="#" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false" Style="background-color: orange; width: 150px;" ID="dropdownItem" runat="server" />
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="~/Home.aspx" runat="server">My Page</a>
            <a class="dropdown-item" href="~/Default.aspx?signout=true" runat="server">Log Out</a>
        </div>
    </div>
</nav>
