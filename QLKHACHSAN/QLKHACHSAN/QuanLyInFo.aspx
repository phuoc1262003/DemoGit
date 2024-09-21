<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyInFo.aspx.cs" Inherits="QLKHACHSAN.QuanLyInFo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .banginfo{
        width:100%;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:DataList ID="dl_thongtincanhan" CssClass="banginfo" runat="server">
            <ItemTemplate>
               <table style="width: 100%;">
            <tr>
                <td colspan="2">
                    <h1>THÔNG TIN CÁ NHÂN</h1>
                </td>
            </tr>
            <tr>
                <td>Tên Tài Khoản:</td>
                <td>
                    <asp:Label ID="lb_tentk" runat="server" Text='<%# Eval("MaTK") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Mật khẩu:</td>
                <td>
                    <asp:TextBox ID="txtmatkhau" runat="server" Text='<%# Eval("MatKhau") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Họ và Tên:</td>
                <td>
                    <asp:TextBox ID="txthovaten" runat="server" Text='<%# Eval("TenKH") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Địa Chỉ:</td>
                <td>
                    <asp:TextBox ID="txtdiachi" runat="server" Text='<%# Eval("DiaChi") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Số điện thoại:</td>
                <td>
                    <asp:TextBox ID="txtsodt" runat="server" Text='<%# Eval("SoDT") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Label ID="lbthongbao" runat="server" Text="" EnableViewState="false"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Cập Nhật" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Xem Hóa Đơn" />
                </td>
            </tr>
        </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</body>
</html>
