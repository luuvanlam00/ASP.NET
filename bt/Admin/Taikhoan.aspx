<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Taikhoan.aspx.cs" Inherits="bt.Admin.Taikhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        a {
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins"                       
                        <div class="ibox-title">
                            <h1>Quản lý tài khoản</h1>
                            <button type="button" class="btn btn-primary "><a href="Themtk.aspx">Thêm mới</a></button>
                         </div>
                       <div class="ibox-content"> 
                           <asp:GridView runat="server" 
                                AutoGenerateColumns="false" 
                                ID="dgvTaikhoan"
                                class="table table-bordered table-hover">
                                
                                <Columns>
                                 <asp:BoundField DataField="taikhoan" HeaderText="Tên tài khoản" />                
                                  <asp:BoundField DataField="matkhau" HeaderText="Mật khẩu" />
                                    <asp:BoundField DataField="vaitro" HeaderText="Vai trò" />
                            
                                    <asp:TemplateField>
                                        <HeaderTemplate>Sửa</HeaderTemplate>
                                        <ItemTemplate>
                                            <button class="btn btn-primary btn-sm "><a href='<%# "Suatk.aspx?taikhoan=" + Eval("taikhoan")%>' >Sửa</a></button>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                        <asp:TemplateField>
                                    <HeaderTemplate>Xóa</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="btnXoa" Text="Xóa "
                                            CssClass="btn btn-primary btn-sm"
                                            OnClientClick="return xoa();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("taikhoan")%>'
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
