<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Suatk.aspx.cs" Inherits="bt.Admin.Suatk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
     <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                         <h1>Sửa tài khoản</h1>
                        </div>
                       <div class="ibox-content">
                                <asp:Panel runat="server" ID="pnError" Visible="false">
                                    <div class="alert alert-danger">
                                        <asp:Label runat="server" ID="lbError"></asp:Label>
                                        <asp:HyperLink runat="server" ID="hpError" class="alert-link"></asp:HyperLink>
                                    </div>
                                </asp:Panel>
                            <div class="form-horizontal">
                                <div class="form-group"><label class="col-sm-2 control-label">Tên tài khoản</label>

                                    <div class="col-sm-10">
                                        <asp:TextBox runat="server" ID="txtTen" CssClass="form-control"  required=""></asp:TextBox>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">Mật khẩu</label>

                                    <div class="col-sm-10">
                                        <asp:TextBox runat="server" ID="txtpass" CssClass="form-control "  required=""></asp:TextBox>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                  <div class="form-group"><label class="col-sm-2 control-label">Vai trò</label>

                                    <div class="col-sm-10">
                                        <asp:DropDownList runat="server" ID="cmbvai" CssClass="form-control">
                                            <asp:ListItem Value="admin"></asp:ListItem>
                                            <asp:ListItem Value="user"></asp:ListItem>
                                        </asp:DropDownList>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                             
                             
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
                                   
                                    <asp:Button runat="server" ID="tbnSua" Text="Sửa"  CssClass="btn btn-primary"   OnClick="tbnSua_Click"/>
                                       
                                      <button class="btn btn-white" type="submit" ><a href="Taikhoan.aspx">Quay lại</a></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
