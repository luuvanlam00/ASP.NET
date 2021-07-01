<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Danhmuc.aspx.cs" Inherits="bt.Admin.Danhmuc" %>

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
                            <h1>Quản lý danh mục</h1>
                            <button type="button" class="btn btn-primary "><a href="Themdm.aspx">Thêm mới</a></button>
                        </div>
                        <div class="ibox-content">
                            <asp:GridView runat="server" 
                                AutoGenerateColumns="false" 
                                ID="dgvDanhmuc"
                                class="table table-bordered table-hover"
                                >
                                <Columns>
                                 <asp:BoundField DataField="maloai" HeaderText="ID" />                
                                  <asp:BoundField DataField="tenloai" HeaderText="Tên danh mục" />
                            
                                    <asp:TemplateField>
                                        <HeaderTemplate>Sửa</HeaderTemplate>
                                        <ItemTemplate>
                                            <button class="btn btn-primary btn-sm "><a href='<%# "Suadm.aspx?maloai=" + Eval("maloai")%>' >Sửa</a></button>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                        <asp:TemplateField>
                                    <HeaderTemplate>Xóa</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="btnXoa" Text="Xóa "
                                            CssClass="btn btn-primary btn-sm"
                                            OnClientClick="return xoa();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("maloai")%>'
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
