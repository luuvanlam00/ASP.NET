<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Suakh.aspx.cs" Inherits="bt.Admin.Suakh1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
      <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                         <h1>Sửa khách hàng</h1>
                        </div>
                       <div class="ibox-content">
                                <asp:Panel runat="server" ID="pnError" Visible="false">
                                    <div class="alert alert-danger">
                                        <asp:Label runat="server" ID="lbError"></asp:Label>
                                        <asp:HyperLink runat="server" ID="hpError" class="alert-link"></asp:HyperLink>
                                    </div>
                                </asp:Panel>
                            <div class="form-horizontal">
                                  <div class="form-group"><label class="col-sm-2 control-label">Tên khách hàng</label>

                                    <div class="col-sm-10">
                                        <asp:TextBox runat="server" ID="txtTen"  CssClass="form-control" required=""></asp:TextBox>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">Email</label>

                                    <div class="col-sm-10">
                                        <asp:TextBox runat="server" ID="txtem"  TextMode="Email"  CssClass="form-control" required=""></asp:TextBox>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                  <div class="form-group"><label class="col-sm-2 control-label">Số điện thoại</label>

                                    <div class="col-sm-10">
                                      <asp:TextBox runat="server" ID="txtsdt"  CssClass="form-control" required=""></asp:TextBox>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                             
                             
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
                                   
                                    <asp:Button runat="server" ID="tbnSua" Text="Sửa"  CssClass="btn btn-primary"   OnClick="tbnSua_Click"/>
                                       
                                      <button class="btn btn-white" type="submit" ><a href="Khachhang.aspx">Quay lại</a></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
