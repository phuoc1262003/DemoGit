<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="QLKHACHSAN.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DangKy</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
     <style>
        @import url('https://fonts.googleapis.com/css2?family=Poetsen+One&display=swap');
        *{
            margin:0;
            padding:0;
        }
        html, body {
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #form1 {
            width:100%;
            height:100%;
            background-image: url(./images/logincdio.jpg);
            background-size: 100% 100%;
            background-repeat: no-repeat;
        }
                table {
            margin: 50px 50px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        tr {
            font-size: 25px;
            font-family: 'Roboto', sans-serif;
            color: white;
            text-shadow: 
                -1px -1px 0 #000,  
                1px -1px 0 #000,
                -1px 1px 0 #000,
                1px 1px 0 #000;
            font-weight: 700;
            font-style: italic;
        }
        tr td h1{
            margin: 20px 150px;
            text-shadow: 
                -1px -1px 0 #000,  
                1px -1px 0 #000,
                -1px 1px 0 #000,
                1px 1px 0 #000;
            font-size: 48px; /* Bạn có thể thay đổi kích thước chữ theo ý muốn */
            font-weight: 700;
            font-style: italic;
        }
        .text {
            width: 250px;
            height: 30px;
            margin-left: 50px;
            color: #333;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: border-color 0.3s, box-shadow 0.3s;
            outline: none;
        }
        .thongbao{
            color:red;
        }
        tr td .btn {
            width: 100px;
            height: 40px;
            margin: 20px 90px;
            color:#03C4D1;
            background-color: white;
            border: 1px solid #ccc;
            border-radius: 7px;
            font-family: 'Roboto', sans-serif;
            font-weight:700;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td colspan="2">
                        <h1>SIGN UP</h1>
                    </td>
                   
                </tr>
                <tr>
                    <td>User Name:</td>
                    <td>
                        <asp:TextBox ID="txtusername" CssClass="text" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtpassw" CssClass="text" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="txtconfpassw" CssClass="text" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Họ và Tên:</td>
                    <td>
                        <asp:TextBox ID="txthoten" CssClass="text" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Địa Chỉ:</td>
                    <td>
                        <asp:TextBox ID="txtdiachi" CssClass="text" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Số DT:</td>
                    <td>
                        <asp:TextBox ID="txtsodt" CssClass="text" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Label ID="lb_thongbao" CssClass="thongbao" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btncreate" runat="server" CssClass="btn" Text="CREATE" OnClick="btncreate_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnback" runat="server" CssClass="btn" Text="BACK" OnClick="btnback_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
