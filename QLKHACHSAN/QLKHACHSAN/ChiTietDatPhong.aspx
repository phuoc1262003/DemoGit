<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="ChiTietDatPhong.aspx.cs" Inherits="QLKHACHSAN.ChiTietDatPhong" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .calendar-icon{
            width:20px;
            height:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:DataList ID="dl_datphong" runat="server">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td rowspan="5">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "images/"+Eval("HinhAnh") %>' />
                    </td>
                    <td>
                       Mã Phòng: <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaPhong") %>'></asp:Label>
                    </td>         
                </tr>
                <tr>
                    <td>
                        Loại Phòng: <asp:Label ID="Label2" runat="server" Text='<%# Eval("MaLP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mô Tả: <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </td>  
                </tr>
                 <tr>
                    <td>
                        Giá: <asp:Label ID="Label4" runat="server" Text='<%# Eval("GiaPhong") %>'></asp:Label> vnđ
                    </td>  
                </tr>
                 <tr>
                    <td>
                        Tình Trạng: <asp:Label ID="Label5" runat="server" Text='<%# Eval("TrangThai") %>'></asp:Label>
                    </td>  
                </tr>
                 <tr>
                    <td colspan="2">
                        <h2>Thông Tin Thuê Phòng</h2>
                    </td>  
                </tr>
                 <tr>
                    <td>Số Ngày Thuê:</td>
                     <td>
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td> 
                </tr>
                 <tr>
                    <td>Ngày Thuê:</td>
                     <td>
                         <asp:TextBox ID="txtNgayThue" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="imgNgayThue" runat="server" ImageUrl="~/images/calendar_icon.png" CssClass="calendar-icon" />
                        <asp:CalendarExtender ID="calNgayThue" runat="server" TargetControlID="txtNgayThue" PopupButtonID="imgNgayThue"></asp:CalendarExtender>
                    </td> 
                </tr>
                 <tr>
                    <td>Ngày Trả:</td>
                     <td>
                         <asp:TextBox ID="txtNgayTra" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="imgNgayTra" runat="server" ImageUrl="~/images/calendar_icon.png" CssClass="calendar-icon" />
                        <asp:CalendarExtender ID="calNgayTra" runat="server" TargetControlID="txtNgayTra" PopupButtonID="imgNgayTra"></asp:CalendarExtender>
                    </td> 
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btndatphong" runat="server" Text="Đặt Phòng" />
                    </td>
                    <td>
                        <asp:Button ID="btndanhgia" runat="server" Text="Đánh Giá" CommandArgument='<%# Eval("MaPhong") %>' OnClick="btndanhgia_Click" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
