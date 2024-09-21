<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyDPvaDV.aspx.cs" Inherits="QLKHACHSAN.QuanLyDPvaDV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        <style>
         @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet');
         body {
             background-color: #EFEBEA;
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
        .trove_linkbtn {
            
            font-size: 15px;
            font-weight: bold;
            border: 1px solid #48DBFC;
            border-radius: 10px;
            background-color: #48DBFC;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            font-family: 'Roboto', sans-serif;
        }
        .tb{
            margin-top:20px;
            margin-bottom:10px;
            text-align:center;
            color:#d63031;
        }
        .bang1 {
            margin:auto;
            font-weight: 400;
            font-family: 'Roboto', sans-serif;
        }
        .bang2 {
            margin:auto;
            font-weight: 400;
            font-family: 'Roboto', sans-serif;
        }
        .huy_btn {
            text-decoration: none;
            color: red;
            margin: 0 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="tieude">
            <div class="trove">
                <asp:LinkButton ID="btntrove" CssClass="trove_linkbtn" runat="server" OnClick="btntrove_Click">Trở về</asp:LinkButton>
            </div>
            <h2>Quản Lý Đặt Phòng Và Dịch Vụ</h2>
        </div>
        <div class="tieude">
            <h2>Phiếu Đặt Phòng</h2>
        </div>
        <asp:GridView CssClass="bang1" ID="grid_hoadon" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="MaPhieuDP" HeaderText="Mã Phiếu" SortExpression="MaPhieuDP" />
                <asp:BoundField DataField="MaTK" HeaderText="Mã TK" SortExpression="MaTK" />
                <asp:BoundField DataField="MaPhong" HeaderText="Mã Phòng" SortExpression="MaPhong" />
                <asp:BoundField DataField="SoNgThueP" HeaderText="Số Ngày Thuê" SortExpression="SoNgThueP" />
                <asp:BoundField DataField="NgThue" HeaderText="Ngày Thuê" SortExpression="NgThue" />
                <asp:BoundField DataField="NgTra" HeaderText="Ngày Trả" SortExpression="NgTra" />
                <%--<asp:TemplateField HeaderText="Xóa Phiếu">
                    <ItemTemplate>
                        <asp:LinkButton CssClass="huy_btn" ID="linkbtnxoaphong" runat="server" CommandArgument='<%# Eval("MaPhong") %>' OnClick="linkbtnxoaphong_Click" >Hủy</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>--%>
            </Columns>
        </asp:GridView>
        <div class="tb"><asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label></div>
        <div class="tieude">
            <h2>Phiếu Đặt Dịch Vụ</h2>
        </div>
        <asp:GridView CssClass="bang2" ID="grid_dichvu" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="MaPhieuDV" HeaderText="Mã Phiếu" SortExpression="MaPhieuDV" />
                <asp:BoundField DataField="MaTK" HeaderText="Mã TK" SortExpression="MaTK" />
                <asp:BoundField DataField="MaDV" HeaderText="Mã Dịch Vụ" SortExpression="MaDV" />
                <asp:BoundField DataField="SoNgaySDDV" HeaderText="Số Ngày Sử Dụng Dịch Vụ" SortExpression="SoNgaySDDV" />  
                <%--<asp:TemplateField HeaderText="Xóa Phiếu">
                    <ItemTemplate>
                        <asp:LinkButton CssClass="huy_btn" ID="linkbtnxoadv" runat="server" CommandArgument='<%# Eval("MaDV") %>' OnClick="linkbtnxoadv_Click">Hủy</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>--%>
            </Columns>
        </asp:GridView>
        <div class="tb"><asp:Label ID="lbthongbao1" runat="server" Text=""></asp:Label></div>
    </form>
</body>
</html>
