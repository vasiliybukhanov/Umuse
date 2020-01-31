<%@ Page Title="Home" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="WebApplication.HomeAdmin" %>

<asp:Content ID="headAdminHome" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Content/HomeAdmin.css" type="text/css" media="screen" runat="server" />
</asp:Content>


<asp:Content ID="BodyConent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="admin-homepage-body">
        <h3 class="text-center">View and edit:</h3>
        <div class="container">
            <div class="row">
                <div class="col-md-6 py-3">
                    <a class="card" href="~/EditGenres" runat="server">
                        <div class="card-body">
                            <h3>Genres</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-6 py-3">
                    <a class="card" href="#" runat="server">
                        <div class="card-body">
                            <h3>Albums</h3>
                        </div>
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 py-3">
                    <a class="card" href="#" runat="server">
                        <div class="card-body">
                            <h3>Artists</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-6 py-3">
                    <a class="card" href="#" runat="server">
                        <div class="card-body">
                            <h3>Tracks</h3>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
