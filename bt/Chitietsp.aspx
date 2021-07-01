<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Chitietsp.aspx.cs" Inherits="bt.Chitietsp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #comment {
            padding: 15px 0;
        }

            #comment h3 {
                font-size: 15px;
                font-weight: bold;
                color: #000;
                text-transform: capitalize;
                margin: 0 0 15px 0;
            }

            #comment input,
            #comment textarea {
                border-radius: 0;
            }

            #comment textarea {
                height: 250px;
            }

        #comments {
            padding: 15px 0;
        }

            #comments ul {
                border-bottom: 1px dotted #ccc;
            }

                #comments ul li {
                    list-style: none;
                }

                    #comments ul li.comm-name {
                        font-weight: bold;
                        color: #000;
                    }

                    #comments ul li.comm-details {
                        line-height: 18px;
                        padding: 10px 0;
                    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">

    <div class="container_fullwidth">
        <div class="container">

            <div class="row">
                <div class="col-md-9">


                    <asp:Repeater runat="server" ID="sanpham">
                        <ItemTemplate>

                            <div class="products-details">
                                <div class="preview_image">
                                    <div class="preview-small">
                                        <img id="zoom_03" src='<%# "../Anh/" + getAnhDaiDien(Convert.ToInt32( Eval("masp"))) %>' alt="">
                                    </div>
                                </div>
                                <div class="products-description">
                                    <h5 class="name">
                                        <%# Eval("tensp") %>
                                    </h5>
                                    <p>
                                        <span class=" light-red">Tình trạng:Còn hàng
                                        </span>
                                    </p>
                                    <p>
                                        <%# Eval("chitiet") %>
                                    </p>
                                    <hr class="border">



                                    <div class="price">
                                        Giá :
              <span class="new_price">
                  <%# Convert.ToInt32(Eval("giakm")).ToString("N0")%>
                  <sup>VND
                  </sup>
              </span>
                                        <span class="old_price">
                                            <%# Convert.ToInt32(Eval("giaban")).ToString("N0")%>
                                            <sup>VND
                                            </sup>
                                        </span>
                                    </div>
                                    <hr class="border">
                        </ItemTemplate>
                    </asp:Repeater>
                   <form runat="server">
                        <div class="wided">
                            <div class="qty">
                                Số lượng: &nbsp;&nbsp;: 
                                       
                        <asp:TextBox runat="server" ID="txtsl" Text="1" TextMode="Number"  min="1" Style="width: 80px"></asp:TextBox>

                            </div>

                            <div class="button_group">

                                <asp:LinkButton runat="server" ID="btn" CssClass="button" CommandArgument='<%# Eval("masp") %>' OnCommand="btn_Command1">Đặt mua</asp:LinkButton>



                                <button class="button compare">
                                    <i class="fa fa-exchange"></i>
                                </button>
                                <button class="button favorite">
                                    <i class="fa fa-heart-o"></i>
                                </button>
                                <button class="button favorite">
                                    <i class="fa fa-envelope-o"></i>
                                </button>
                            </div>
                        </div>



                        <div class="clearfix">
                        </div>

                        <hr class="border">
                        <img src="User/images/share.png" alt="" class="pull-right">
                </div>
            </div>
            <div class="clearfix">
        </div>
       <asp:Repeater runat="server" ID="mota"><ItemTemplate>
        <div class="tab-box">
          <div id="tabnav">
            <ul>
              <li>
                <a href="#Descraption">
                  Mô tả
                </a>
              </li>
            </ul>
          </div>
            
          <div class="tab-content-wrap">
            <div class="tab-content" id="Descraption">
              <p>
               <%# Eval("mota") %>
              </p>

            </div>
          
          </div>
                
        </div>
     
            </ItemTemplate></asp:Repeater>  
         
        <div class="clearfix">
        </div>
          
        <div id="comment" class="col-md-8 col-sm-9 col-xs-12">
          <h3 style="margin-bottom: 30px;">Bình luận sản phẩm</h3>
       
            <div class="form-group">
              <label style="margin-bottom:15px;">Tên</label>
              <asp:TextBox  runat="server" ID="txtten" required="" class="form-control" placeholder="Tên"></asp:TextBox>
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1" style="margin-bottom:15px;">Nội dung</label>
              <asp:TextBox runat="server" class="form-control" ID="txtnd" TextMode="MultiLine" required="" placeholder="Nội Dung"></asp:TextBox>
            </div>
              <div class="form-group">
              <label style="margin-bottom:15px;">Số điện thoại</label>
              <asp:TextBox  runat="server" ID="TextBox1" required="" class="form-control" placeholder="Tên"></asp:TextBox>
            </div>
            <asp:Button runat="server" Text="Bình luận" OnClick="Unnamed_Click" ID="btnbl" class="btn btn-default"></asp:Button>
         
        </div>
                      
          
      </form>
             <asp:Repeater runat="server" ID="bl"><ItemTemplate>
          <div id="comments" class="col-md-12 col-sm-12 col-xs-12">
            
              <ul>
                <li class="comm-name"><%# Eval("ten") %></li>
                <li class="comm-time"><%# Eval("thoigian") %></li>
                <li class="comm-details">
                  <p>
                   <%# Eval("noidung") %>
                  </p>
                </li>
              </ul>
            
          </div>
     
        </ItemTemplate></asp:Repeater>
        <div class="clearfix">
        </div>
      </div>
     
              
              <div class="col-md-3">
                  <div class="special-deal leftbar">
                      <h4 class="title">Special
            <strong>Deals
            </strong>
                      </h4>
                      <asp:Repeater runat="server" ID="deal">
                          <ItemTemplate>
                              <div class="special-item">

                                  <div class="product-image">
                                      <a href="#">
                                          <img src='<%# "../Anh/" + getAnhDaiDien(Convert.ToInt32( Eval("masp"))) %>' alt="" style="width: 41px; height: 60px;">
                                      </a>
                                  </div>
                                  <div class="product-info">
                                      <p>
                                          <%# Eval("tensp") %>
                                      </p>
                                      <h5 class="price">
                                          <%# Convert.ToInt32(Eval("giakm")).ToString("N0")%>
                                      </h5>
                                  </div>

                              </div>
                          </ItemTemplate>
                      </asp:Repeater>

                  </div>



              </div>
        </div>
     
   
        <div class="clearfix">
        </div>

   
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
