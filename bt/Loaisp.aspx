<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Loaisp.aspx.cs" Inherits="bt.Loaisp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="container_fullwidth">
  <div class="container">
    <div class="row">
      <div class="col-md-3">
        <div class="category leftbar">
          <h3 class="title">
            Danh mục
          </h3>
          <ul>
              <asp:Repeater runat="server" ID="danhmuc">
                  <ItemTemplate>
              <li>
                <a href='<%#"Loaisp.aspx?maloai=" + Eval("maloai") %>'>
                  <%# Eval("tenloai") %>
                </a>
              </li>
                 </ItemTemplate>
            </asp:Repeater>
          </ul>
        </div>
        <div class="clearfix">
        </div>


        <div class="clearfix">
        </div>
        <div class="leftbanner">
          <img src="User/images/26.jpg" alt="">
        </div>
          <div class="leftbanner">
          <img src="User/images/28.jpg" alt="">
        </div>
          <div class="leftbanner">
          <img src="User/images/29.jpg" alt="">
        </div>
          <div class="leftbanner">
          <img src="User/images/30.jpg" alt="">
        </div>
      </div>
      <div class="col-md-9">
        <div class="banner">
          <div class="bannerslide" id="bannerslide">
            <ul class="slides">
              <li>
                <a href="#">
                  <img src="User/images/50.jpg" alt="" style="height: 180px; width: 100%;" />
                </a>
              </li>
              <li>
                <a href="#">
                  <img src="User/images/27.png" alt="" style="height: 180px; width: 100%;" />
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="clearfix">
        </div>
        <div class="products-grid">
          <div class="toolbar">
            <div class="row">
              <asp:Repeater runat="server" ID="sp"><ItemTemplate>
                  <div class="col-md-4 col-sm-6">

                    <div class="products">
                      <div class="thumbnail">
                        <a href='<%# "Chitietsp.aspx?masp=" + Eval("masp")%>'>
                          <img src='<%# "../Anh/" + getAnhDaiDien(Convert.ToInt32( Eval("masp"))) %>' alt="Product Name" width="230px" height="280px">
                        </a>
                      </div>
                      <div class="productname">
                        <%# Eval("tensp") %>
                      </div>
                      <h4 class="price">
                       <%# Convert.ToInt32(Eval("giakm")).ToString("N0")%> VND
                      </h4>
                      <div class="button_group">
                        <a class="button add-cart" href='<%# "Chitietsp.aspx?masp=" + Eval("masp")%>'>
                         Đặt mua
                        </a>
                     
                       
                      </div>
                    </div>
                  </div>

             </ItemTemplate></asp:Repeater>
            </div>

          </div>

        </div>

      </div>

 
      
    </div>
  </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
