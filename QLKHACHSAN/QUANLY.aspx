<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QUANLY.aspx.cs" Inherits="QLKHACHSAN.QUANLY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         *{
            margin:0;
            padding:0;
        }
        html, body {
            width: 100%;
            height: 100%;
        }
        #form1 {
            width:100%;
            height:100%;
        }
        .banner{
            width:100%;
            height:600px;
        }
        .banner img{
            width:100%;
            height:100%;

        }
        .mauden{
            width:100%;
            height:30px;
            background-color:black;
        }
        .tieude {
            width:100%;
            height:70px;
            background-color:#48dbfb;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .tieude h2{
            color:white;
            margin:auto;
        }
        .menu{
            background-color:black;
            height:50px;
            width:100%;
            display: flex;
            align-items: center;
            justify-content: space-around;
            
        }
        .text{
            color:white;
            text-decoration:none;
            
        }
        .text:hover{
            color:#fff200;
        }
        .nutthoat{
            border: 1px solid #ccc;
            border-radius: 20px;
            background-color: white;
            color:#FF7168;
            text-align: center;
            text-decoration: none;
            padding:5px 20px;
            margin-right:20px;
        }
        .nutthoat:hover{
            background-color: #dfe6e9;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="tieude">
            <h2>QUẢN LÝ WEBSITE KHÁCH SẠN</h2>
            <asp:LinkButton ID="LinkButton1" CssClass="nutthoat" runat="server" OnClick="LinkButton1_Click">Thoát</asp:LinkButton>
        </div>
        <div class="menu">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/QuanLyTaiKhoan.aspx" CssClass="text">TÀI KHOẢN</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/QuanLyPhong.aspx" CssClass="text">PHÒNG</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/QuanLyDichVu.aspx" CssClass="text">DỊCH VỤ</asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/QuanLyThanhToan.aspx" CssClass="text">THANH TOÁN</asp:HyperLink>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/QuanLyDanhGia.aspx" CssClass="text">ĐÁNH GIÁ</asp:HyperLink>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/QuanLyBCTK.aspx" CssClass="text">BÁO CÁO THỐNG KÊ</asp:HyperLink>
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/QuanLyDPvaDV.aspx" CssClass="text">ĐẶT PHÒNG VÀ DỊCH VỤ</asp:HyperLink>
        </div>
        <div class="banner">
            <img src="images/ks.png" alt="Alternate Text" />
        </div>
        <div class ="mauden"></div>
    </form>
</body>
</html>
