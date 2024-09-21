<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="ChiTietDichVu.aspx.cs" Inherits="QLKHACHSAN.ChiTietDichVu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dl_datdichvu" runat="server">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td rowspan="3">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "images/"+Eval("HinhAnh") %>' />
                    </td>
                    <td>
                       Mã Dịch Vụ: <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaDV") %>'></asp:Label>
                    </td>         
                </tr>
                 <tr>
                    <td>
                        Tên Dịch Vụ: <asp:Label ID="Label5" runat="server" Text='<%# Eval("TenDV") %>'></asp:Label>
                    </td>  
                </tr>
                 <tr>
                    <td>
                        Giá: <asp:Label ID="Label4" runat="server" Text='<%# Eval("GiaDV") %>'></asp:Label> vnđ
                    </td>  
                </tr>
                
                 <tr>
                    <td colspan="2">
                        <h2>Thông Tin Sử Dụng Dịch Vụ</h2>
                    </td>  
                </tr>
                 <tr>
                    <td>Số Ngày Sử Dụng Dịch Vụ:</td>
                     <td>
                         <asp:TextBox ID="txtsoluong" runat="server"></asp:TextBox>
                    </td> 
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btndatdv" runat="server" Text="Đặt Dịch Vụ" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
