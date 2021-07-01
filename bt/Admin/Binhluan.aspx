<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Binhluan.aspx.cs" Inherits="bt.Admin.Binhluan" %>
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
                            <h1>Quản lý bình luận</h1>
                            <button type="button" class="btn btn-primary "><a href="Thembl.aspx">Thêm mới</a></button>
                        </div>
                         
                        <div class="ibox-content">
                            <asp:GridView runat="server" 
                                AutoGenerateColumns="false" 
                                ID="dgvbl"
                                class="table table-bordered table-hover"
                                >
                                <Columns>
                                 <asp:BoundField DataField="id_bl" HeaderText="ID" />                
                                  <asp:BoundField DataField="sanpham.tensp" HeaderText="Tên sản phẩm" />
                                    <asp:BoundField DataField="ten" HeaderText="Tên người bình luận"/>
                                    <asp:BoundField DataField="thoigian" HeaderText="Thời gian"/>
                                        <asp:BoundField DataField="noidung" HeaderText="Nội dung"/>
                                    <asp:BoundField DataField="sdt" HeaderText="Số điện thoại"/>
                                <asp:TemplateField>
                                        <HeaderTemplate>Sửa</HeaderTemplate>
                                        <ItemTemplate>
                                            <button class="btn btn-primary btn-sm "><a href='<%# "Suabl.aspx?id_bl=" + Eval("id_bl")%>' >Sửa</a></button>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField>
                                    <HeaderTemplate>Xóa</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="btnXoa" Text="Xóa "
                                            CssClass="btn btn-primary btn-sm"
                                            OnClientClick="return xoa();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("id_bl")%>'
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
