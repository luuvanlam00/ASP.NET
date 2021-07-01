<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Thanhtoan.aspx.cs" Inherits="bt.Thanhtoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

<div class="container_fullwidth">

    <div class="container shopping-cart">
        <div class="row">

                <div class="col-md-12">
                    <h3 class="title">
                        Xác nhận đơn thanh toán
                    </h3>

                    <div class="clearfix">
                    </div>
                    <form id="giohang" method="post">
                        <table class="shop-table">

                            <thead>
                                <tr>
                                    <th>
                                        Tên sản phẩm
                                    </th>
                                    <th>
                                        Giá bán
                                    </th>
                                    <th>
                                        Số lượng
                                    </th>
                                    <th>
                                        Thành tiền
                                    </th>
                                </tr>
                            </thead>
                             <asp:Repeater runat="server" ID="sp"><ItemTemplate>
                            <tbody>
                               
                               
                                    <tr>
                                        <td>

                                            <div class="productname">
                                             <%# Eval("Name") %>
                                            </div>


                                        </td>
                                        <td>
                                            <h5>
                                                    <%# Convert.ToInt32(Eval("Price")).ToString("N0")%>
                                            </h5>
                                        </td>

                                        <td>
                                            <h5>

                                                <%# Eval("Quantity") %>
                                            </h5>

                                            </h5>
                                        </td>
                                        <td>
                                            <h5>    <%# Convert.ToInt32(Eval("Money")).ToString("N0") %></h5>
                                        </td>
                                    </tr>
                               
                            </tbody>
                                 </ItemTemplate></asp:Repeater>
                   
                        <tfoot>
                            <tr>

                                <td>
                                    <H5>Tổng giá trị hóa đơn:</H5>
                                </td>
                                <td colspan="2"></td>
                                <td><b><span>
                                            <h5><asp:Label runat="server" ID="lb"></asp:Label></h5>
                                        </span></b></td>


                            </tr>
                        </tfoot>
                        </table>
                    </form>

                    <div class="clearfix">
                    </div>


                </div>
      
        </div>
        <div class="clearfix">
        </div>
        <div id="custom-form" class="col-md-6 col-sm-8 col-xs-12" style="margin-top: 20px;">
            <form runat="server">
                <div class="form-group">
                    <label><h6>Tên khách hàng</h6></label>
                    <asp:TextBox runat="server" ID="txtten"  class="form-control"  required="" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <label><h6>Địa chỉ Email</h6></label>
                       <asp:TextBox runat="server" ID="txtem" TextMode="Email" class="form-control"  required="" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <label><h6>Số điện thoại</h6></label>
                      <asp:TextBox runat="server" ID="txtsdt"  class="form-control"  required="" ></asp:TextBox>
                </div>
                <div class="form-group">
                    <label><h6>Địa chỉ nhận hàng</h6></label>
                    <asp:TextBox runat="server" ID="txtdc"  class="form-control"  required="" ></asp:TextBox>
                </div>
                <asp:Button runat="server" class="btn btn-info" Text="Mua hàng"  ID="btnmua" OnClick="btnmua_Click"></asp:Button>
            </form>
        </div>

    </div>

</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
