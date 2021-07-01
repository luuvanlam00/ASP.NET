<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="bt.Giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container_fullwidth">

        <div class="container shopping-cart">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="title">Giỏ hàng
                    </h3>

                    <div class="clearfix">
                    </div>
                      
                    <form runat="server" >
                        
                        <table class="shop-table">

                            <thead>
                                <tr>
                                    <th>Ảnh
                                    </th>
                                    <th>Chi tiết
                                    </th>
                                    <th>Giá bán
                                    </th>
                                    <th>Số lượng
                                    </th>
                                    <th>Thành tiền
                                    </th>
                                    <th>Xóa
                                    </th>
                                </tr>
                            </thead>
                          <asp:Repeater runat="server" ID="giohang"  >
                                <ItemTemplate>
                                    <tbody>

                                        <tr>
                                            <td>
                                                <img src='<%# "Anh/"+ Eval("Image") %>' alt="">
                                                <div>
                                                </div>
                                            </td>
                                            <td>
                                                <div class="shop-details">
                                                    <div class="productname">
                                                        <%# Eval("Name") %>
                                                    </div>
                                                    <p>
                                                        <img alt="" src="images/star.png">
                                                        <a class="review_num" href="#">
                                                            <%# Eval("Chitiet") %>
                                                        </a>
                                                    </p>

                                                    <p>
                                                        Mã sản phẩm :
                                                  <strong class="pcode">
                                                      <%# Eval("ID") %>
                                                  </strong>
                                                    </p>
                                                </div>
                                            </td>
                                            <td>
                                                <h5>
                                                    <%# Convert.ToInt32(Eval("Price")).ToString("N0")%>
                                                </h5>
                                            </td>
                                            <td>
                                                <asp:TextBox runat="server"  Text='<%# Eval("Quantity") %>' ReadOnly="true"  ID="txtsl" style="width: 80px"  ></asp:TextBox>
                                            </td>
                                            <td>
                                                <h5>
                                                    <strong class="red">
                                                        <%# Convert.ToInt32(Eval("Money")).ToString("N0") %>
                                                </h5>
                                                </strong>
                                                 </h5>
                                            </td>
                           
                                            <td>
                                            <asp:LinkButton runat="server" ID="bt" CommandArgument='<%# Eval("ID") %>' OnCommand="bt_Command"><img src="User/images/remove.png" alt=""></asp:LinkButton>
                                                

                                            </td>
                                        </tr>




                                    </tbody>
                              </ItemTemplate>
                            </asp:Repeater>

                           
                             
               
                        </table>
                              
                    </form>
                

           <button>
            <a href="Sanpham.aspx">Tiếp tục mua hàng</a>
            </button>

                                    
                    
                    <div class="row">
                        <div class="col-md-4 col-sm-6" style="float: right;">
                            <div class="shippingbox">

                                <div class="grandtotal">
                                    <h5>Tổng tiền:
                                    </h5>
                                    <span style="margin-right: 200px">
                                        <asp:Label runat="server" ID="lb"></asp:Label>
                                    </span>
                                </div>
                                <button style="margin-left: 50px; margin-top: 20px">
                                    <a href="Thanhtoan.aspx">Thanh toán</a>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>


                </div>

            </div>
            <div class="clearfix">
            </div>

        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
