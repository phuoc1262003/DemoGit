<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChu.Master" AutoEventWireup="true" CodeBehind="ChiTietDichVu.aspx.cs" Inherits="QLKHACHSAN.ChiTietDichVu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body, html {
            height: 100%;
            width:100%;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Roboto', sans-serif;
        }

        .container {
            width:100%;
            background-color: #F0EBEF;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
           
        }
        .griddv{
            margin:auto;
        }
        .hinhanh{
            width:500px;
            text-align:center;
        }
        .row-image {
            width:450px;
            height:300px;
        }

        .textthongtin {
            flex: 1;
            margin-top: 50px;
            font-size: 25px;
            font-weight: 700;
        }

        .row-thongtin {
            margin: 5px 0;
            font-size: 25px;
            font-weight: 700;
        }

        .textsudung h2 {
            margin-top: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .textsongay td {
            margin: 20px 0%;
            text-align: center;
            font-size: 20px;
            font-weight: bold;
        }

        .textbox-thongtin {
            border: none;
            border-bottom: 1px solid black;
            width: 250px;
            text-align: center;
            font-size: 16px;
            background-color:transparent;
        }
        .textbox-thongtin:focus{
            outline:none;
        }

        .butthongtin {
            text-align:center;
        }
        .btn{
            padding:30px 0 0 0;
        }
        .button-thongtin {
            padding: 10px 20px;
            background-color: #53D7EE;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 18px;
            cursor: pointer;
        }

            .button-thongtin:hover {
                background-color: #0abde3;
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
    <div class="container">
        <asp:DataList ID="dl_datdichvu" runat="server" CssClass="griddv">
        <ItemTemplate>
                <table style="width:100%;">
                <tr class="textthongtin">
                    <td rowspan="3" class="hinhanh">
                        <asp:Image ID="Image1" runat="server" CssClass="row-image" ImageUrl='<%# "images/"+Eval("HinhAnh") %>' />
                    </td>
                    <td>
                       Mã Dịch Vụ: <asp:Label ID="Label1" runat="server" CssClass="row-thongtin" Text='<%# Eval("MaDV") %>'></asp:Label>
                    </td>         
                </tr>
                 <tr class="textthongtin">
                    <td>
                        Tên Dịch Vụ: <asp:Label ID="Label5" runat="server" CssClass="row-thongtin" Text='<%# Eval("TenDV") %>'></asp:Label>
                    </td>  
                </tr>
                 <tr class="textthongtin">
                    <td>
                        Giá: <asp:Label ID="Label4" runat="server" CssClass="row-thongtin" Text='<%# Eval("GiaDV") %>'></asp:Label> vnđ
                    </td>  
                </tr>
                
                 <tr class="textthongtin">
                    <td colspan="2" align="center">
                        <h2>Thông Tin Sử Dụng Dịch Vụ</h2>
                    </td>  
                </tr>
                 <tr class="textsongay">
                    <td>Số Ngày Sử Dụng Dịch Vụ:</td>
                     <td>
                         <asp:TextBox ID="txtsoluong" runat="server" CssClass="textbox-thongtin"></asp:TextBox>
                    </td> 
                </tr>
                <tr class="butthongtin">
                    <td class="btn" colspan="2">
                        <asp:Button ID="btndatdv" runat="server" Text="Đặt Dịch Vụ" CssClass="button-thongtin" CommandArgument='<%# Eval("MaDV") %>' OnClick="btndatdv_Click" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        <div class="tb"><asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label></div>
    </div>
    
</asp:Content>
