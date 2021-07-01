<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="Suasp.aspx.cs" Inherits="bt.Admin.Suasp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
       <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                         <h1>Sửa sản phẩm</h1>
                        </div>
                       <div class="ibox-content">
                                <asp:Panel runat="server" ID="pnError" Visible="false">
                                    <div class="alert alert-danger">
                                        <asp:Label runat="server" ID="lbError"></asp:Label>
                                        <asp:HyperLink runat="server" ID="hpError" class="alert-link"></asp:HyperLink>
                                    </div>
                                </asp:Panel>
                            <div class="form-horizontal">
                                <div class="form-group"><label class="col-sm-2 control-label">Tên sản phẩm</label>

                                    <div class="col-sm-10">
                                        <asp:TextBox runat="server" ID="txtTen" CssClass="form-control "  required=""></asp:TextBox>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                             
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">Mô tả</label>

                                    <div class="col-sm-10">
                                        <asp:TextBox runat="server" ID="txtmota" TextMode="MultiLine" CssClass="form-control"  required=""></asp:TextBox>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">Chi tiết</label>

                                    <div class="col-sm-10">
                                        <asp:TextBox runat="server" ID="txtct" TextMode="MultiLine" CssClass="form-control"  required=""></asp:TextBox>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                               <div class="form-group"><label class="col-sm-2 control-label">Giá bán</label>

                                    <div class="col-sm-10">
                                        <asp:TextBox runat="server" ID="txtgb" TextMode="SingleLine" CssClass="form-control"  required=""></asp:TextBox>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                <div class="form-group"><label class="col-sm-2 control-label">Giá khuyến mại</label>

                                    <div class="col-sm-10">
                                        <asp:TextBox runat="server" ID="txtgiakm" TextMode="SingleLine" CssClass="form-control"  required=""></asp:TextBox>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                    <div class="form-group"><label class="col-sm-2 control-label">Loại sản phẩm</label>

                                    <div class="col-sm-10">
                                        <asp:DropDownList runat="server" ID="cmbloai"  CssClass="form-control"></asp:DropDownList>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                                    <div class="form-group"><label class="col-sm-2 control-label">Nhà cung cấp</label>

                                    <div class="col-sm-10">
                                        <asp:DropDownList runat="server" ID="cmbncc"  CssClass="form-control"></asp:DropDownList>
                                     </div>
                                </div>
                                <div class="hr-line-dashed"></div>
                             
                             
                             
                             
                             
                             
                                <div class="form-group">
                                    <div class="col-sm-4 col-sm-offset-2">
                                   
                                    <asp:Button runat="server" ID="tbnSua" Text="Sửa"  CssClass="btn btn-primary"  OnClick="tbnSua_Click"  />
               
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
