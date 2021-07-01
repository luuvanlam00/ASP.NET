<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Chitiethdn.aspx.cs" Inherits="bt.Admin.Chitiethdn" %>
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
                            <h1>Chi tiết hóa đơn nhập</h1>
                           <button type="button" class="btn btn-primary "><a href="Themcthdn.aspx" >Thêm</a></button>
                        </div>
                        <div class="ibox-content">
                            <asp:GridView runat="server" 
                                AutoGenerateColumns="false" 
                                ID="dgvcthdn"
                                class="table table-bordered table-hover"
                                >
                                <Columns>
                                   
                                 <asp:BoundField DataField="id_cthdnhap" HeaderText="ID" />                
                                  <asp:BoundField DataField="id_hdnhap" HeaderText="Mã hóa đơn nhập" />
                                    <asp:BoundField DataField="sanpham.tensp" HeaderText="Tên sản phẩm" />
                                    <asp:BoundField DataField="soluong" HeaderText="Số lương" />
                                    <asp:BoundField DataField="dongia" HeaderText="Đơn giá" />
                                    
                                    <asp:TemplateField>
                                        <HeaderTemplate>Sửa</HeaderTemplate>
                                        <ItemTemplate>
                                            <button class="btn btn-primary btn-sm "><a href='<%# "Suacthdn.aspx?id_cthdn=" + Eval("id_cthdnhap")%>' >Sửa</a></button>

                                        </ItemTemplate>
                                    </asp:TemplateField>
                                        <asp:TemplateField>
                                    <HeaderTemplate>Xóa</HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="btnXoa" Text="Xóa "
                                            CssClass="btn btn-primary btn-sm"
                                            OnClientClick="return xoa();"
                                            OnCommand="btnXoa_Command"
                                            CommandArgument='<%# Eval("id_cthdnhap")%>'
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
