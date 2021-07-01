<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Cthdb.aspx.cs" Inherits="bt.Admin.Cthdb" %>
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
                            <h1>Chi tiết hóa đơn </h1>
                        
                        </div>
                        <div class="ibox-content">
                            <asp:GridView runat="server" 
                                AutoGenerateColumns="false" 
                                ID="dgvcthdn"
                                class="table table-bordered table-hover"
                                >
                                <Columns>
                                   
                                 <asp:BoundField DataField="id_cthd" HeaderText="ID" />                
                                  <asp:BoundField DataField="id_hd" HeaderText="Mã hóa đơn" />
                                    <asp:BoundField DataField="sanpham.tensp" HeaderText="Tên sản phẩm" />
                                    <asp:BoundField DataField="soluong" HeaderText="Số lương" />
                                    <asp:BoundField DataField="giaban" HeaderText="Đơn giá" />
                                    
                                 
                          
                                       
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
