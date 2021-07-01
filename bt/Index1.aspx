<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index1.aspx.cs" Inherits="bt.Index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
     <div class="hom-slider">
   <div class="container">
      <div id="sequence">
         
      </div>
   </div>
   <div class="promotion-banner">
      <div class="container">
         <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-4">
               <div class="promo-box"><img src="User/images/29.jpg" alt=""></div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4">
               <div class="promo-box"><img src="User/images/28.jpg" alt=""></div>
            </div>
             <div class="col-md-4 col-sm-4 col-xs-4">
               <div class="promo-box"><img src="User/images/30.jpg" alt=""></div>
            </div>
          
         </div>
      </div>
   </div>
</div>
<div class="clearfix"></div>
<div class="container_fullwidth">
   <div class="container">
      <div class="hot-products">
         <h3 class="title"><strong>Hot</strong> Products</h3>
      

         <ul id="hot">

            <li>
               <div class="row">
                 <asp:Repeater runat="server" ID="productHot">
                     <ItemTemplate>
                     <div class="col-md-3 col-sm-6">
                        <div class="products">
                           <div class="offer">- <%# (Convert.ToInt32(Eval("giaban")) - Convert.ToInt32(Eval("giakm"))) * 100 / Convert.ToInt32(Eval("giaban")) %> %</div>
                           <div class="thumbnail"><a href='<%# "Chitietsp.aspx?masp=" + Eval("masp")%>' ><img src='<%# "../Anh/" + getAnhDaiDien(Convert.ToInt32( Eval("masp"))) %>' alt="Product Name" width="230px" height="280px"></a></div>
                           <div class="productname"><%# Eval("tensp") %></div>
                           <h4 class="price"> <%# Convert.ToInt32( Eval("giakm")).ToString("N0") %> VND</h4>
                           <div class="button_group"><a class="button add-cart" href='<%# "Chitietsp.aspx?masp=" + Eval("masp")%>'>Đặt mua</a><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                        </div>
                     </div>
                         </ItemTemplate>
                 </asp:Repeater>
               </div>
            </li>


         </ul>

      </div>
      <div class="clearfix"></div>
      <div class="featured-products">
         <h3 class="title"><strong>Featured </strong> Products</h3>
    
         <ul id="featured">
            <li>
               <div class="row">
                   <asp:Repeater runat="server" ID="Repeater1">
                     <ItemTemplate>
                     <div class="col-md-3 col-sm-6">
                        <div class="products">
                           <div class="offer">- <%# (Convert.ToInt32(Eval("giaban")) - Convert.ToInt32(Eval("giakm"))) * 100 / Convert.ToInt32(Eval("giaban")) %>%</div>
                           <div class="thumbnail"><a href='<%# "Chitietsp.aspx?masp=" + Eval("masp")%>'><img src='<%# "../Anh/" + getAnhDaiDien(Convert.ToInt32(Eval("masp")))%>' alt="Product Name" width="230px" height="280px"></a></div>
                           <div class="productname"><%# Eval("tensp") %></div>
                           <h4 class="price"><%# Convert.ToInt32( Eval("giakm")).ToString("N0") %>  VND</h4>
                           <div class="button_group"><a class="button add-cart" href='<%# "Chitietsp.aspx?masp=" + Eval("masp")%>'>Đặt mua</a><button class="button compare" type="button"><i class="fa fa-exchange"></i></button><button class="button wishlist" type="button"><i class="fa fa-heart-o"></i></button></div>
                        </div>
                     </div>
                   </ItemTemplate>
                 </asp:Repeater>
               </div>
            </li>
            
         </ul>
      </div>
      <div class="clearfix"></div>

   </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
