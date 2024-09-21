<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="Phong.aspx.cs" Inherits="QLKHACHSAN.Phong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sanpham{
            width:100%;

        }
       
        .sanpham td{
            width:50%;
            height:300px;
            text-align:center;
        }
        td .img{
            width:80%;
            height:200px;
        }
        .img:hover{
            transform:scale(1.02);
        }
        td .gia{
            width:100%;
            font-weight:bold;
            color:#222f3e;
        }
        .giaphong{
            font-weight:bold;
            color:#222f3e;
        }
        .chitiet{
             width:100%;
            font-weight:bold;
            color:#222f3e;
        }       
        .chitiet:hover{
            color:#8395a7;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dl_phong" CssClass="sanpham" runat="server" RepeatColumns="2">
        <ItemTemplate>
            <asp:ImageButton CssClass="img" ID="ImageButton1" runat="server" CommandArgument='<%# Eval("MaPhong") %>' ImageUrl='<%# "images/"+Eval("HinhAnh") %>' OnClick="ImageButton1_Click" />
            <br />
            <div class="gia">
                Giá Phòng: <asp:LinkButton CssClass="giaphong" ID="LinkButton3" runat="server" CommandArgument='<%# Eval("MaPhong") %>' Text='<%# Eval("GiaPhong") %>' OnClick="LinkButton3_Click" ></asp:LinkButton>
            </div>
            <br />
            <asp:LinkButton CssClass="chitiet" ID="LinkButton4" runat="server" CommandArgument='<%# Eval("MaPhong") %>' OnClick="LinkButton4_Click">Chi Tiết Phòng</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
