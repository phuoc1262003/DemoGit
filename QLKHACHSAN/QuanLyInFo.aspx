<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyInFo.aspx.cs" Inherits="QLKHACHSAN.QuanLyInFo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #EFEBEA;
        }

        .banginfo {
               width: auto;
               height: auto;
               margin:auto;
               transform:translateY(130px);
               display: flex;
               justify-content: center;
               align-items: center;
           }
        tr td {
            font-family: 'Roboto', sans-serif;
            font-size: 20px;
            font-weight: 900;
        }

            tr td h1 {
                font-family: 'Roboto', sans-serif;
                font-size: 30px;
                margin-left: 80px;
            }

            tr td .text {
                width: 160px;
                border: none;
                border-bottom: 2px solid #000; /* Đường gạch dưới */
                padding: 5px 0; /* Khoảng cách giữa chữ và gạch dưới */
                outline: none;
                background-color: #EFEBEA;
                font-size: 18px;
                font-weight: 700;
            }

            tr td .btn {
                width: 150px;
                height: 40px;
                margin: 20px 30px;
                background-color: #48DBFC;
                font-family: 'Roboto', sans-serif;
                border: none;
                border-radius: 10px;
                font-weight: 900;
                font-size: 17px;
            }
        .trove {
            margin-left: 20px;
            margin-top: 20px;
        }

        .trove_linkbtn {
            font-size: 15px;
            font-weight: bold;
            border: 1px solid #48DBFC;
            border-radius: 10px;
            background-color: #48DBFC;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
        }
          .tb{
             margin-top:150px;
             margin-bottom:10px;
             text-align:center;
             color:#d63031;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="trove">
                <asp:LinkButton ID="btntrove" CssClass="trove_linkbtn" runat="server" OnClick="btntrove_Click" >Trở về</asp:LinkButton>
            </div>
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
                    <asp:TextBox ID="txtmatkhau" CssClass="text" runat="server" Text='<%# Eval("MatKhau") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Họ và Tên:</td>
                <td>
                    <asp:TextBox ID="txthovaten" CssClass="text" runat="server" Text='<%# Eval("TenKH") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Địa Chỉ:</td>
                <td>
                    <asp:TextBox ID="txtdiachi" CssClass="text" runat="server" Text='<%# Eval("DiaChi") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Số điện thoại:</td>
                <td>
                    <asp:TextBox ID="txtsodt" CssClass="text" runat="server" Text='<%# Eval("SoDT") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Cập Nhật" CommandArgument='<%# Eval("MaTK") %>' OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" CssClass="btn"  Text="Xem Phiếu" OnClick="Button2_Click" CommandArgument='<%# Eval("MaTK") %>' />
                </td>
            </tr>
        </table>
            </ItemTemplate>
        </asp:DataList>
        <div class="tb"><asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label></div>
    </form>

</body>
</html>
