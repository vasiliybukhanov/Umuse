<%@ Page Title="Edit: Genres" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EditGenres.aspx.cs" Inherits="WebApplication.EditGenres" %>

<asp:Content ID="headEditGenres" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Content/EditData.css" type="text/css" media="screen" runat="server" />
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="edit-page-body">
        <div class="container">
            <div class="row justify-content-start">
                <div class="col-4">
                    <a href="~/HomeAdmin.aspx" class="float-left btn text-white" role="button" style="background-color: orange;" runat="server">&laquo Back
                    </a>
                </div>
                <div class="col-4">
                    <h3 class="text-center">Genres</h3>
                </div>
            </div>
        </div>
        <div class="container mt-3">
            <asp:Repeater ID="genresRepeater" runat="server">
                <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Genre</th>
                                <th>Name</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# DataBinder.Eval(Container.DataItem, "ID") %></td>
                        <td><%# DataBinder.Eval(Container.DataItem, "GenreName") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
