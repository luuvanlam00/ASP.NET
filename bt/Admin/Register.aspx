<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="bt.Admin.Register" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>INSPINIA | Register</title>

    <link href="Template/css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/Template/css/font-awesome.css" rel="stylesheet">
    <link href="Template/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="Template/css/animate.css" rel="stylesheet">
    <link href="Template/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name">IN+</h1>

            </div>
            <h3>Register to IN+</h3>
            <p>Create account to see it in action.</p>
            <form class="m-t" role="form" runat="server">
                <div class="form-group">
                    <asp:TextBox runat="server" ID="txtten" class="form-control" placeholder="Name" required=""></asp:TextBox>
                </div>
                <div class="form-group">
                   <asp:TextBox runat="server" ID="txtpass" TextMode="Password" class="form-control" placeholder="Password" required=""></asp:TextBox>
                </div>
                <div class="form-group">
                     <asp:TextBox runat="server" ID="txta" TextMode="Password" class="form-control" placeholder="Password" required=""></asp:TextBox>
                </div>
              <div class="form-group">
                     <asp:Label runat="server" ID="lb" CssClass="text-danger"></asp:Label>
                </div>
                <asp:Button runat="server" class="btn btn-primary block full-width m-b" Text="Register" OnClick="Unnamed_Click"></asp:Button>

                <p class="text-muted text-center"><small>Already have an account?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="Login.aspx">Login</a>
            </form>
            <p class="m-t"> <small>Inspinia we app framework base on Bootstrap 3 &copy; 2014</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="Template/js/jquery-2.1.1.js"></script>
    <script src="Template/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="Template/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green'
            });
        });
    </script>
</body>

</html>
