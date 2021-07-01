<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Hoadonnhap.aspx.cs" Inherits="bt.Admin.Hoadonnhap" %>
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
                            <h1>Quản lý hóa đơn nhập</h1>
                            <button type="button" class="btn btn-primary "><a href="Themhdn.aspx">Thêm mới</a></button>
                        </div>
                        <div class="ibox-content">
                            <asp:GridView runat="server" 
                                AutoGenerateColumns="false" 
                                ID="dgvhdn"
                                class="table table-bordered table-hover"
                                >
                                <Columns>
                                 <asp:BoundField DataField="id_hdnhap" HeaderText="ID" />                
                                  <asp:BoundField DataField="mancc" HeaderText="Mã nhà cung cấp" />
                                    <asp:BoundField DataField="ngaynhap" HeaderText="Ngày nhập" />
                                    <asp:BoundField DataField="tennguoigiao" HeaderText="Người giao" />
                                    <asp:BoundField DataField="noidung" HeaderText="Nội dung" />
                            
                                    <asp:TemplateField>
                                        <HeaderTemplate>Sửa</HeaderTemplate>
                                        <ItemTemplate>
                                            <button class="btn btn-primary btn-sm "><a href='<%# "Suahdn.aspx?id_hdn=" + Eval("id_hdnhap")%>' >Sửa</a></button>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                        <asp:TemplateField>
                                    <HeaderTemplate>Xóa</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="btnXoa" Text="Xóa "
                                            CssClass="btn btn-primary btn-sm"
                                            OnClientClick="return xoa();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("id_hdnhap")%>'
                                           />
                                            
                                    </ItemTemplate>

                                </asp:TemplateField>
                                            <asp:TemplateField>
                                        <HeaderTemplate>Chi tiết</HeaderTemplate>
                                        <ItemTemplate>
                                            <button class="btn btn-primary btn-sm "><a href='<%# "Chitiethdn.aspx?id_hdnhap=" + Eval("id_hdnhap")%>' >Chi tiết</a></button>

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
