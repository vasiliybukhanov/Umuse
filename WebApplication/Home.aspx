<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication.Home" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Content/Home.css" type="text/css" media="screen" />
</asp:Content>

<asp:Content ID="BodyConent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron text-center pt-5" style="width: 100%; background-color: white;">
        <h1>Welcome to Umuse App!</h1>
        <p class="lead">Stay tuned. Anywhere. All the time</p>
        <p>
            <a class="btn my-2 w-25" href="~/MyMusic.aspx" style="background-color: orange;" runat="server">My Music &raquo</a>
        </p>
    </div>

    <div class="homepage-body">
        <h3 class="text-center">Trending playlists</h3>        
    </div>
</asp:Content>
