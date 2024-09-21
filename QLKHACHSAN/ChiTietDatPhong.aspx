<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="ChiTietDatPhong.aspx.cs" Inherits="QLKHACHSAN.ChiTietDatPhong" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet');
        /*table {            
            margin:auto;
            justify-content: center;
            align-items: center;
        }*/
        .dlphong{
            /*margin:auto;*/
        }
        .dlphong1{
            margin:auto;
        }
        h2 {
            text-align: center;
            margin-top: 25px;
        }
        .img {
            width: 450px;
            height:300px;
        }
        .chitiet {
            /*font-size: 25px;*/
            font-weight: 700;
        }
        .calendar-icon{
            width:20px;
            height:20px;
        }
        /*tr, td, .textbox-container {
            padding: 0;
            margin: 0;
        }*/
        td {
            padding-right: 10px; 
            font-size: 20px;
            font-weight: 700;
        }
        .textbox {
            width: 250px;
            height: 25px;
            border: none;
            justify-content: center;
            align-items: center;
            border-bottom: 2px solid #0D0D0D;
        }
        .textbox:focus{
            outline:none;
        }
        .btn {
            width: 130px;
            height: 40px;
            margin: 20px 50px;
            background-color: #48DBFC;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            font-weight:700;
        }
        .tb{
             margin-top:20px;
             margin-bottom:10px;
             text-align:center;
             color:#d63031;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="dlphong">
        <asp:DataList ID="dl_datphong" runat="server" CssClass="dlphong1">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td rowspan="5">
                        <asp:Image ID="Image1" CssClass="img" runat="server" ImageUrl='<%# "images/"+Eval("HinhAnh") %>' />
                    </td>
                    <td class="chitiet">
                       Mã Phòng: <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaPhong") %>'></asp:Label>
                    </td>         
                </tr>
                <tr>
                    <td class="chitiet">
                        Loại Phòng: <asp:Label ID="Label2" runat="server" Text='<%# Eval("MaLP") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="chitiet">
                        Mô Tả: <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                    </td>  
                </tr>
                 <tr>
                    <td class="chitiet">
                        Giá: <asp:Label ID="Label4" runat="server" Text='<%# Eval("GiaPhong") %>'></asp:Label> vnđ
                    </td>  
                </tr>
                 <tr>
                    <td class="chitiet">
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
                     <td class="textbox-container">
                         <asp:TextBox ID="txtsongaythue" CssClass="textbox" runat="server"></asp:TextBox>
                    </td> 
                </tr>
                 <tr>
                    <td>Ngày Thuê:</td>
                     <td class="textbox-container">
                         <asp:TextBox ID="txtNgayThue" CssClass="textbox" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="imgNgayThue" runat="server" ImageUrl="~/images/calendar_icon.png" CssClass="calendar-icon" />
                        <asp:CalendarExtender ID="calNgayThue" runat="server" TargetControlID="txtNgayThue" PopupButtonID="imgNgayThue"></asp:CalendarExtender>
                    </td> 
                </tr>
                 <tr>
                    <td>Ngày Trả:</td>
                     <td class="textbox-container">
                         <asp:TextBox ID="txtNgayTra" CssClass="textbox" runat="server"></asp:TextBox>
                        <asp:ImageButton ID="imgNgayTra" runat="server" ImageUrl="~/images/calendar_icon.png" CssClass="calendar-icon" />
                        <asp:CalendarExtender ID="calNgayTra" runat="server" TargetControlID="txtNgayTra" PopupButtonID="imgNgayTra"></asp:CalendarExtender>
                    </td> 
                </tr>       
                <tr>
                    <td>
                        <asp:Button ID="btndatphong" CssClass="btn" runat="server" Text="Đặt Phòng" CommandArgument='<%# Eval("MaPhong") %>' OnClick="btndatphong_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btndanhgia" CssClass="btn" runat="server" Text="Đánh Giá" CommandArgument='<%# Eval("MaPhong") %>' OnClick="btndanhgia_Click" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </div>
    <div class="tb"><asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label></div>
</asp:Content>
