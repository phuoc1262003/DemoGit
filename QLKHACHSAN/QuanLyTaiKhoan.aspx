<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyTaiKhoan.aspx.cs" Inherits="QLKHACHSAN.QuanLyTaiKhoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet"');
        body {
            background-color: #F0EBEF;
        }
        .tieude h2 {
            font-size: 25px;
            font-weight: 700;
            text-align: center;
            font-family: 'Roboto', sans-serif;
        }
        .trove {
            margin-left: 20px;
            margin-top: 20px;
        }
        .search{
            text-align:center;
        }
        .search_text {
            width: 240px;
            height: 35px;
            background-color: #FAFAFA;
            margin-bottom: 20px;
            border: none;
            border-radius: 10px;
            box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 0.2);
        }
        .search_text:focus{
            outline:none;
        }
        .search_btn {
            width: 100px;
            height: 25px;
            margin-left: 15px;
            font-weight: 700;
            border: none;
            border-radius: 8px;
            box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 0.2);
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
        .centered-gridview {
            display: flex;
            justify-content: center;
            align-items: center;
            border: none;
        }
        .tb{
            margin-top:20px;
            margin-bottom:10px;
            text-align:center;
            color:#d63031;
        }
        .text {
            border: none;
            background-color: #F0EBEF;
        }
        .text1 {
            border: none;
            height: 40px;
            padding: 10px;
            background-color: transparent;
            box-sizing: border-box;
            overflow: auto;
            resize: none;
        }
        .text:focus {
            outline: none;
        }
        .link_btn {
            margin-left: 30px;
            color: red;
            font-size:15px;
            text-decoration: none;
            background-color: white;
            padding: 4px 10px;
            border: 1px solid white;
            border-radius:10px;
        }
        .link_btn:hover{
            background-color:#dfe6e9;
            color:#ff7675;
            border:none;
        }
        .link_btn1 {
            margin-left: 15px;
            color: red;
            font-size:15px;
            text-decoration: none;
            background-color: white;
            padding: 4px 10px;
            border: 1px solid white;
            border-radius:10px;
        }
        .link_btn1:hover{
            background-color:#dfe6e9;
            color:#ff7675;
            border:none;
        }
    </style>
</head>
<body>
  
    <form id="form1" runat="server">
        <div class="tieude">
            <div class="trove">
                <asp:LinkButton ID="btntrove" CssClass="trove_linkbtn" runat="server" OnClick="btntrove_Click">Trở về</asp:LinkButton>
            </div>
            <h2>Danh Sách Tài Khoản</h2>
        </div>
       
        <div class="search">
            <asp:TextBox CssClass="search_text" ID="txtsearch" runat="server"></asp:TextBox>
            <asp:Button CssClass="search_btn" ID="bnttimkiem" runat="server" Text="Tìm Kiếm" OnClick="bnttimkiem_Click" />
        </div>
        <asp:GridView ID="grid_qltaikhoan" CssClass="centered-gridview" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="MaTK" HeaderText="Mã Tài Khoản" SortExpression="MaTK" />
                
                <asp:TemplateField HeaderText="Tên Khách Hàng">
                    <ItemTemplate>
                        <asp:TextBox CssClass="text" ID="txttenkh" runat="server" Text='<%# Eval("TenKH") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa Chỉ">
                    <ItemTemplate>
                        <asp:TextBox CssClass="text1" ID="txtdiachi" runat="server" Text='<%# Eval("DiaChi") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Số Điện Thoại">
                    <ItemTemplate>
                        <asp:TextBox CssClass="text" ID="txtsodt" runat="server" Text='<%# Eval("SoDT") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Xóa Tài Khoản">
                    <ItemTemplate>
                        <asp:LinkButton CssClass="link_btn" ID="LinkButton1" runat="server" CommandArgument='<%# Eval("MaTK") %>' OnClick="LinkButton1_Click">Xóa</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Chỉnh Sửa">
                    <ItemTemplate>
                        <asp:LinkButton CssClass="link_btn1" ID="btnsua" runat="server" CommandArgument='<%# Eval("MaTK") %>' OnClick="btnsua_Click">Sửa</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <div class="tb"><asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label></div>
    </form>
</body>
</html>
