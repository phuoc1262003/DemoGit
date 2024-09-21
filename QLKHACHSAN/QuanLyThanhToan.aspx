<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyThanhToan.aspx.cs" Inherits="QLKHACHSAN.QuanLyThanhToan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .tieude h2 {
            margin-left: 500px;
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
        .tb{
             margin-top:20px;
             margin-bottom:10px;
             text-align:center;
             color:#d63031;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="tieude">
            <div class="trove">
                <asp:LinkButton ID="btntrove" CssClass="trove_linkbtn" runat="server" OnClick="btntrove_Click">Trở về</asp:LinkButton>
            </div>
            <h2>Quản Lý Thanh Toán</h2>
        </div>
        <asp:GridView ID="grid_qlthanhtoan" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="MaHD" HeaderText="Mã Hóa Đơn" SortExpression="MaHD" />
                <asp:BoundField DataField="MaTK" HeaderText="Mã Tài Khoản" SortExpression="MaTK" />
                <asp:BoundField DataField="MaPhong" HeaderText="Mã Phòng" SortExpression="MaPhong" />
                <asp:BoundField DataField="SoNgThueP" HeaderText="Số Ngày Thuê" SortExpression="SoNgThue" />
                <asp:BoundField DataField="MaDV" HeaderText="Mã DV" SortExpression="MaDV" />
                <asp:BoundField DataField="SoNgaySDDV" HeaderText="Số Ngày SDDV" SortExpression="SoNgaySDDV" />
                <asp:BoundField DataField="ThanhTien" HeaderText="Thành Tiền" SortExpression="ThanhTien" />
                <asp:BoundField DataField="TinhTrang" HeaderText="Tình Trạng" SortExpression="TinhTrang" />
                <asp:BoundField DataField="XNThanhToan" HeaderText="XNTT Từ Khách" SortExpression="XNThanhToan" />
                <asp:TemplateField HeaderText="Option">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server">Xóa</asp:LinkButton>
                        <br />
                        <asp:LinkButton ID="LinkButton2" runat="server">Xác Nhận</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
         <div class="tb"><asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label></div>
    </form>
</body>
</html>
