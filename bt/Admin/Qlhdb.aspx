<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Qlhdb.aspx.cs" Inherits="bt.Admin.Qlhdb" %>
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
                            <h1>Quản lý hóa đơn bán</h1>
                          
                        </div>
                        <div class="ibox-content">
                            <asp:GridView runat="server" 
                                AutoGenerateColumns="false" 
                                ID="dgvhdb"
                                class="table table-bordered table-hover"
                                >
                                <Columns>
                                 <asp:BoundField DataField="id_hd" HeaderText="ID" />                
                                  <asp:BoundField DataField="thoigian" HeaderText="Thời gian" />
                                    <asp:BoundField DataField="tenkh" HeaderText="Tên khách hàng" />
                                    <asp:BoundField DataField="diachi" HeaderText="Địa chỉ" />
                                    <asp:BoundField DataField="trangthai" HeaderText="Trạng thái" />
                            
                                    <asp:TemplateField>
                                        <HeaderTemplate>Sửa</HeaderTemplate>
                                        <ItemTemplate>
                                            <button class="btn btn-primary btn-sm "><a href='<%# "Suahdb.aspx?id_hd=" + Eval("id_hd")%>' >Sửa</a></button>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                        <asp:TemplateField>
                                    <HeaderTemplate>Xóa</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="btnXoa" Text="Xóa "
                                            CssClass="btn btn-primary btn-sm"
                                            OnClientClick="return xoa();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("id_hd")%>'
                                           />
                                            
                                    </ItemTemplate>

                                </asp:TemplateField>
                                            <asp:TemplateField>
                                        <HeaderTemplate>Chi tiết</HeaderTemplate>
                                        <ItemTemplate>
                                            <button class="btn btn-primary btn-sm "><a href='<%# "Cthdb.aspx?id_hd=" + Eval("id_hd")%>' >Chi tiết</a></button>

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
