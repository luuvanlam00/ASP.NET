<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Suaanh.aspx.cs" Inherits="bt.Admin.Suaanh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    
    <div class="col-lg-5">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Cập nhật thông tin</h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-wrench"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#">Config option 1</a>
                            </li>
                            <li><a href="#">Config option 2</a>
                            </li>
                        </ul>
                        <a class="close-link">
                            <i class="fa fa-times"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Mã sản phẩm</label>
                            <div class="col-lg-9">
                                <asp:TextBox runat="server" Enabled="false" ID="txtMaSP" CssClass="form-control" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Upload file</label>
                            <div class="col-lg-9">
                                <asp:FileUpload runat="server" ID="fuImg" CssClass="form-control" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Ảnh đại diện</label>
                            <div class="col-lg-9">
                                <asp:CheckBox runat="server" ID="chkMain" /> 
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-2 col-lg-10">
                                <asp:Button runat="server" ID="btnUpload" class="btn btn-sm btn-primary" type="submit" Text="Sửa"
                                    OnClick="btnUpload_Click"
                                />
                                 <button class="btn btn-white" type="submit" ><a href="Sanpham.aspx">Quay lại</a></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
