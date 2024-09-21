<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="DanhGia.aspx.cs" Inherits="QLKHACHSAN.DanhGia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .background{
            width:100%;
            height:auto;
            background-color:#f7f1e3;
        }
        .danhgia{
           margin:auto;
        }
        .hinh{
            text-align:center;
            width:400px;

        }
        .img{
            width:350px;
            height:300px;
            
        }
        table{
            padding:10px 0px;
        }
         .noidung{
            font-size: 25px;
            font-weight:bold;
            margin-bottom: 5px;
            padding: 5px 0;
        }
        .tieude{
            margin: 50px 0;
            text-align:center;
            font-size: 20px;
            font-weight: 700;
        }
            .tieude .text {
                width: 450px;
                height: 150px;
                padding: 10px; 
                box-sizing: border-box;
                overflow: auto;
                resize: none;
            }
            .text:hover{
                outline:none;
            }
        .tieude .btn {
            width: 100px;
            height: 30px;
            background-color: #48DBFC;
            color: white;
            border-radius: 8px;
            border: none;
        }
        .btn:hover{
            background-color: #0abde3;
        }
         .tb{
            margin-top:20px;
            padding: 0 0 10px 0;
            text-align:center;
            color:#d63031;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="background">
        <asp:DataList ID="dl_danhgia" runat="server" CssClass="danhgia">
        <ItemTemplate>
            <table style="width:100%;">
                <tr>
                    <td class="hinh" rowspan="4">
                        <asp:Image ID="Image1" CssClass="img" runat="server" ImageUrl='<%# "images/"+Eval("HinhAnh") %>' />
                    </td>
                    <td class="noidung">Mã Phòng: <asp:Label ID="Label1" runat="server" Text='<%# Eval("MaPhong") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td class="noidung">Loại Phòng: <asp:Label ID="Label2" runat="server" Text='<%# Eval("MaLP") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td class="noidung">Mô tả: <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label></td>
                </tr>
                 <tr>
                    <td class="noidung">Giá: <asp:Label ID="Label4" runat="server" Text='<%# Eval("GiaPhong") %>'></asp:Label> vnđ</td>
                </tr>
                <tr>
                    <td class="tieude" colspan="2">Đánh Giá</td>
                </tr>
                <tr>
                    <td class="tieude" colspan="2">
                        <asp:TextBox ID="txtdanhgia" runat="server" TextMode="MultiLine" Rows="5" Columns="50" MaxLength="1000" CssClass="text"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tieude" colspan="2">
                        <asp:Button ID="btndanhgia" runat="server" Text="Đánh Giá" CssClass="btn" CommandArgument='<%# Eval("MaPhong") %>' OnClick="btndanhgia_Click" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <div class="tb"><asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label></div>
    </div>
</asp:Content>
