<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="DanhGia.aspx.cs" Inherits="QLKHACHSAN.DanhGia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dl_danhgia" runat="server">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td rowspan="4">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "images/"+Eval("HinhAnh") %>' />
                    </td>
                    <td>Mã Phòng: <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaPhong") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>Loại Phòng: <asp:Label ID="Label2" runat="server" Text='<%# Eval("MaLP") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td>Mô tả: <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label></td>
                </tr>
                 <tr>
                    <td>Giá: <asp:Label ID="Label4" runat="server" Text='<%# Eval("GiaPhong") %>'></asp:Label> vnđ</td>
                </tr>
                <tr>
                    <td colspan="2">Đánh Giá</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtdanhgia" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btndanhgia" runat="server" Text="Đánh Giá" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
