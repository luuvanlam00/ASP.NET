<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="bt.Admin.Login" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Login</title>

    <link href="Template/css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/Template/css/font-awesome.css" rel="stylesheet">

    <link href="Template/css/animate.css" rel="stylesheet">
    <link href="Template/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">IN+</h1>

            </div>
            <h3>Welcome to IN+</h3>
            <p>Perfectly designed and precisely prepared Template theme with over 50 pages with extra new web app views.
                <!--Continually expanded and constantly improved Inspinia Template Them (IN+)-->
            </p>
            <p>Login in. To see it in action.</p>
            <form class="m-t" role="form" runat="server">
                <div class="form-group">
                    <asp:TextBox runat="server" ID="txtUser" TextMode="SingleLine" class="form-control" placeholder="Username" required=""></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox  runat="server" ID="txtPass" TextMode="Password" class="form-control" placeholder="Password" required=""></asp:TextBox>
                </div>
                 <asp:Label runat="server" ID="lbEror" CssClass="text-danger"></asp:Label>
                <asp:Button runat="server" ID="btnLogin" Text="Login" OnClick="btnLogin_Click" class="btn btn-primary block full-width m-b"></asp:Button>

                <a href="#"><small>Forgot password?</small></a>
                <p class="text-muted text-center"><small>Do not have an account?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="Register.aspx">Create an account</a>
            </form>
            <p class="m-t"> <small>Inspinia we app framework base on Bootstrap 3 &copy; 2014</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="Template/js/jquery-2.1.1.js"></script>
    <script src="Template/js/bootstrap.min.js"></script>

</body>

</html>
