<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Sanpham.aspx.cs" Inherits="bt.Admin.Sanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        a{color:white;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
     <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h1>Quản lý sản phẩm</h1>
                            <button type="button" class="btn btn-primary "><a href="Themsp.aspx">Thêm mới</a></button>
                        </div>
                         
                        <div class="ibox-content">
                            <asp:GridView runat="server" 
                                AutoGenerateColumns="false" 
                                ID="dgvsp"
                                class="table table-bordered table-hover"
                                >
                                <Columns>
                                 <asp:BoundField DataField="masp" HeaderText="ID" />                
                                  <asp:BoundField DataField="tensp" HeaderText="Tên sản phẩm" />
                                    <asp:TemplateField>
                                        <HeaderTemplate>Ảnh sản phẩm</HeaderTemplate>
                                        <ItemTemplate>
                                          <img height="80px" src='<%# "../Anh/" + getAnhDaiDien(Convert.ToInt32( Eval("masp"))) %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                   
                                     <asp:TemplateField>
                                        <HeaderTemplate>Giá bán</HeaderTemplate>
                                        <ItemTemplate>
                                            <%# Convert.ToInt32( Eval("giaban")).ToString("N0") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <HeaderTemplate>Giá khuyến mại</HeaderTemplate>
                                        <ItemTemplate>
                                            <%# Convert.ToInt32( Eval("giakm")).ToString("N0") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="loaisp.tenloai" HeaderText="Loại sản phẩm"/>
                                    <asp:BoundField DataField="ncc.tenncc" HeaderText="Nhà cung cấp"/>
                               
                                    <asp:TemplateField>
                                        <HeaderTemplate>Sửa</HeaderTemplate>
                                        <ItemTemplate>
                                            <button class="btn btn-primary btn-sm "><a href='<%#"Suasp.aspx?masp=" + Eval("masp")%>' >Sửa</a></button>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField>
                                        <HeaderTemplate>Uploadanh</HeaderTemplate>
                                        <ItemTemplate>
                                            <button class="btn btn-primary btn-sm "><a href='<%#"Uploadanh.aspx?masp=" + Eval("masp")%>' >Upload</a></button>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField>
                                    <HeaderTemplate>Xóa</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="btnXoa" Text="Xóa "
                                            CssClass="btn btn-primary btn-sm"
                                            OnClientClick="return xoa();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("masp")%>'
                                           />
                                            
                                    </ItemTemplate>

                                </asp:TemplateField>

                                </Columns>


                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
     <script>
        function xoa() {
            if (confirm("Bạn thực sự muốn xóa? Thao tác này sẽ không khôi phục lại!") == true) {
                return true;
            }
            return false;
        }
     </script>
</asp:Content>
