<%@ Page Title="Umuse: Welcome!" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication.Default" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <webopt:BundleReference runat="server" Path="~/Content/default/css" />
</head>
<body>
    <div class="container">
        <div class="card">
            <div class="card-header">
                <img class="mb-4" src="/Images/logo.png" width="72" height="72" />
                <h1 class="h3 mb-3 font-weight-normal">Umuse</h1>
                <h1 class="h4 mb-3 font-weight-normal">Sign in</h1>
            </div>
            <div class="card-body">
                <form id="loginForm" runat="server" class="sign-in">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"></span>
                        </div>
                        <asp:TextBox runat="server" ID="usernameText" type="text" class="form-control" placeholder="username" />
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"></span>
                        </div>
                        <asp:TextBox runat="server" ID="passwordText" TextMode="password" class="form-control" placeholder="password" />
                    </div>
                    <asp:Button runat="server" ID="submitButton" class="btn btn-lg btn-block signInButton" Text="Sign in" />
                    <p class="my-3" >
                        <asp:Label runat="server" ID="outputLabel" class="h6 font-weight-normal" />
                    </p>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
