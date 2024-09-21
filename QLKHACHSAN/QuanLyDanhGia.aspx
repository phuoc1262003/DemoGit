<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyDanhGia.aspx.cs" Inherits="QLKHACHSAN.QuanLyDanhGia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản Lý Đánh Giá</title>
   <style>
         body {
            
            background-color: #F0EBEF;
        }
        .tieude h2 {
            text-align:center;
            font-size: 25px;
            font-weight: 700;
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
        .trove_linkbtn:hover{
            background-color:#81ecec;
        }
        .lbthongbao{
            text-align:center;
            color:red;
        }
        .grid{
            margin:auto;
        }
        .linkbtn {
            color: red;
            font-size:15px;
            text-decoration: none;
            background-color: white;
            padding: 4px 10px;
            border: 1px solid white;
            border-radius:10px;
        }
        .linkbtn:hover{
            background-color:#dfe6e9;
            color:#ff7675;
            border:none;
        }
        .option1{
            width:130px;
            text-align:center;
            margin:15px 0;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
        <div class="tieude">
            <div class="trove">
                <asp:LinkButton ID="btntrove" CssClass="trove_linkbtn" runat="server" OnClick="btntrove_Click">Trở về</asp:LinkButton>
            </div>
            <h2>Quản Lý Đánh Giá</h2>
        </div>
        <div class="qldanhgia">
            <asp:GridView ID="grid_qldichvu" runat="server" CssClass="grid" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="MaTK" HeaderText="Mã Tài Khoản" SortExpression="MaTK" />
                <asp:BoundField DataField="MaPhong" HeaderText="Mã Phòng" SortExpression="MaPhong" />
                <asp:BoundField DataField="DgiaPhong" HeaderText="Đánh Giá Của Khách Hàng" SortExpression="DgiaPhong" />
                <asp:TemplateField HeaderText="Xóa Đánh Giá">
                    <ItemTemplate>
                        <div class="option1">
                            <asp:LinkButton ID="btnxoadanhgia" CssClass="linkbtn" runat="server" OnClick="btnxoadanhgia_Click" CommandArgument='<%# Eval("MaPhong") %>'>Xóa Đánh Giá</asp:LinkButton>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>      
        <div class="lbthongbao">
            <asp:Label ID="lbthongbao" CssClass="lbthongbao1" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
