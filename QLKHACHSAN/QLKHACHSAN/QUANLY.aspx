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
/*            display: flex;
            justify-content: center;
            align-items: center;*/
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="tieude">
            <h1>QUẢN LÝ WEBSITE KHÁCH SẠN</h1>
            <asp:LinkButton ID="LinkButton1" CssClass="nutthoat" runat="server">Thoát</asp:LinkButton>
        </div>
        <div class="menu">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/QuanLyTaiKhoan.aspx">TÀI KHOẢN</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/QuanLyPhong.aspx">PHÒNG</asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/QuanLyDichVu.aspx">DỊCH VỤ</asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/QuanLyThanhToan.aspx">THANH TOÁN</asp:HyperLink>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/QuanLyDanhGia.aspx">ĐÁNH GIÁ</asp:HyperLink>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/QuanLyBCTK.aspx">BÁO CÁO THỐNG KÊ</asp:HyperLink>
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/QuanLyDPvaDV.aspx">QUẢN LÝ ĐẶT PHÒNG VÀ DỊCH VỤ</asp:HyperLink>
        </div>
        <div class="banner">
            <img src="images/ks.png" alt="Alternate Text" />
        </div>
        <div class ="mauden"></div>
    </form>
</body>
</html>
