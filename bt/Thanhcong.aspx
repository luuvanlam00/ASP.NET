<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Thanhcong.aspx.cs" Inherits="bt.Thanhcong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container_fullwidth">

    <div class="container shopping-cart">
        <div class="row">

            <div class="ordered">
                <p class="ordered-report">Quý khách đã đặt hàng thành công!</p>
                <p>• Hóa đơn mua hàng của Quý khách đã được chuyển đến Địa chỉ Email có trong phần Thông tin Khách hàng của chúng Tôi</p>
                <p>• Sản phẩm của Quý khách sẽ được chuyển đến Địa có trong phần Thông tin Khách hàng của chúng Tôi sau thời gian 2 đến 3 ngày, tính từ thời điểm này.</p>
                <p>• Nhân viên giao hàng sẽ liên hệ với Quý khách qua Số Điện thoại trước khi giao hàng 24 tiếng</p>
                <p align="center">Cám ơn Quý khách đã sử dụng Sản phẩm của Công ty chúng Tôi!</p>
            </div>
            <p id="return-home" align="right"><button class="btn btn-primary"><a href="Index1.aspx" style="color:white">Quay về trang chủ</a></button> </p>

        </div>

    </div>

</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
