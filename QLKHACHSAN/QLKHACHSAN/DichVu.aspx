<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="DichVu.aspx.cs" Inherits="QLKHACHSAN.DichVu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .dichvu{
            width:100%;

        }
       
        .dichvu td{
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
        .tendv{
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
    <asp:DataList ID="dl_dichvu" CssClass="dichvu" runat="server" RepeatColumns="2">
        <ItemTemplate>
            <asp:ImageButton ID="ImageButton1" CssClass="img" runat="server" ImageUrl='<%# "images/"+Eval("HinhAnh") %>' CommandArgument='<%# Eval("MaDV") %>' OnClick="ImageButton1_Click" />
            <br />
            <asp:LinkButton ID="LinkButton4" CssClass="tendv" runat="server" Text='<%# Eval("TenDV") %>' CommandArgument='<%# Eval("MaDV") %>' OnClick="LinkButton4_Click"></asp:LinkButton>
            <br />
            <asp:LinkButton ID="LinkButton5" CssClass="chitiet" runat="server" OnClick="LinkButton5_Click" >Chi Tiết Dịch Vụ</asp:LinkButton>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
