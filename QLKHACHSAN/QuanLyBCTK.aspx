<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyBCTK.aspx.cs" Inherits="QLKHACHSAN.QuanLyBCTK" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <style>
         @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet');
        body {
            background-color: #EFEBEA;
        }
        .tieude h2 {
            margin: 25px 0;
            font-size: 20px;
            font-weight: 700;
            text-align: center;
            font-family: 'Roboto', sans-serif;
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
            margin-top:20px;
            margin-bottom:10px;
            text-align:center;
            color:#d63031;
        }
        .box {
            margin-left: 400px;
            font-size: 18px;
            font-weight: 700;
            font-family: 'Roboto', sans-serif;
        }
        .textbox {
            width: 200px;
            height: 25px;
            margin: 0 15px;
            font-weight: 700;
            border: none;
            border-radius: 8px;
            background-color: #FFFDFE;
            box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 0.2);
        }
        .btn {
            width: 80px;
            height: 25px;
            margin-left: 50px;
            font-size: 15px;
            font-weight: 700;
            border: none;
            border-radius: 10px;
            background-color: #48DBFC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="tieude">
            <div class="trove">
                <asp:LinkButton ID="btntrove" CssClass="trove_linkbtn" runat="server" OnClick="btntrove_Click">Trở về</asp:LinkButton>
            </div>
            <h2>Thống Kê Loại Phòng</h2>
        </div>
        <div class="box">
            Loại Phòng: <asp:TextBox CssClass="textbox" ID="txtloaiphong" runat="server"></asp:TextBox>
            Số phòng: <asp:Label ID="lbthongke" runat="server" Text=""></asp:Label>
            <asp:Button CssClass="btn" ID="btnloaiphong" runat="server" Text="Count " OnClick="btnloaiphong_Click" />
        </div>
        <div class="tieude">
            <h2>Thống kê doanh thu</h2>
        </div>
        <div class="box">
            Doanh Thu: <asp:TextBox CssClass="textbox" ID="txtdoanhthu" runat="server"></asp:TextBox>
            Số phòng: <asp:Label  ID="lbdoanhthu" runat="server" Text=""></asp:Label>
            <asp:Button CssClass="btn" ID="Button2" runat="server" Text="Count " />
        </div>
         <div class="tb"><asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label></div>
    </form>
</body>
</html>
