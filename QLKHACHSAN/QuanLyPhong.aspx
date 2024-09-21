<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyPhong.aspx.cs" Inherits="QLKHACHSAN.QuanLyPhong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quan Ly Phong</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #F0EBEF;
        }

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

        .box {
            border: none;
            background-color: transparent ;
        }
        .box:focus{
            outline:none;
        }
        .box1 {
            border: none;
            height:60px;
            padding: 10px;
            background-color: transparent;
            box-sizing: border-box;
            overflow: auto;
            resize: none;
        }
        .box1:focus{
            outline:none;
        }
        .option1{
            width:100px;
            text-align:center;
            margin:15px 0;
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

        .them {
            margin-top: 50px;
            background-color: #F0EBEF;
            display: flex;
            justify-content: center;
            align-items: center;
        }

            .them .themphong {
                font-size: 20px;
                font-weight: 700;
            }

        tr td {
            font-weight: 700;
            margin-left: 500px;
        }

        .text {
            width: 350px;
            height: 25px;
            border: none;
            border-radius: 5px;
            background-color: #FBFAFB;

        }
        .text:focus{
            outline:none;
        }

        .btn {
            width: 90px;
            height: 25px;
            margin-left: 70px;
            background-color: #53D4F1;
            border: none;
            border-radius: 5px;
            font-weight: 700;
            color:white;
        }
        .btn:hover{
            background-color:#81ecec;
        }
        .lbthongbao{
            text-align:center;
            margin-top:10px;
        }
        .lbthongbao1{
            color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="tieude">
            <div class="trove">
                <asp:LinkButton ID="btntrove" CssClass="trove_linkbtn" runat="server" OnClick="btntrove_Click">Trở về</asp:LinkButton>
            </div>
            <h2>Quản Lý Phòng</h2>
        </div>
        <asp:GridView ID="grid_qlPhong" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Mã Phòng">
                    <ItemTemplate>
                        <asp:TextBox ID="txtmaphong" CssClass="box" runat="server" Text='<%# Eval("MaPhong") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mã Loại Phòng">
                    <ItemTemplate>
                        <asp:TextBox ID="txtmalp" CssClass="box" runat="server" Text='<%# Eval("MaLP") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mô Tả">
                    <ItemTemplate>
                        <asp:TextBox ID="txtmota" CssClass="box1" TextMode="MultiLine" MaxLength="1000" runat="server" Text='<%# Eval("MoTa") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hình Ảnh">
                    <ItemTemplate>
                        <asp:TextBox ID="txthinhanh" CssClass="box" runat="server" Text='<%# Eval("HinhAnh") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giá Phòng">
                    <ItemTemplate>
                        <asp:TextBox ID="txtgiaphong" CssClass="box" runat="server" Text='<%# Eval("GiaPhong") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Trạng Thái">
                    <ItemTemplate>
                        <asp:TextBox ID="txttrangthai" CssClass="box" runat="server" Text='<%# Eval("TrangThai") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Option">
                    <ItemTemplate>
                        <div class="option1">
                            <asp:LinkButton ID="btnxoaphong" CssClass="linkbtn" runat="server" CommandArgument='<%# Eval("MaPhong") %>' OnClick="btnxoaphong_Click">Xóa Phòng</asp:LinkButton>
                        </div>
                        <div class="option1">
                            <asp:LinkButton ID="btnsuaphong" CssClass="linkbtn" runat="server" CommandArgument='<%# Eval("MaPhong") %>' OnClick="btnsuaphong_Click">Sửa Phòng</asp:LinkButton>
                        </div>
                        
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <div class="lbthongbao">
            <asp:Label ID="lbthongbao" CssClass="lbthongbao1" runat="server" Text=""></asp:Label>
        </div>
        <table class="them">
            <tr>
                <td align="center" colspan="3">Thêm Phòng</td>

            </tr>
            <tr>
                <td>Mã Phòng:</td>
                <td>
                    <asp:TextBox ID="txtdl_maphong" CssClass="text" runat="server"></asp:TextBox>
                </td>
                <td rowspan="5">
                    <asp:Button ID="btnthem" CssClass="btn" runat="server" Text="Thêm" OnClick="btnthem_Click" />
                </td>
            </tr>
            <tr>
                <td>Mã Loại Phòng:</td>
                <td>
                    <asp:TextBox ID="txtdl_malp" CssClass="text" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Mô Tả:</td>
                <td>
                    <asp:TextBox ID="txtdl_mota" CssClass="text" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Hình Ảnh:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Giá Phòng:</td>
                <td>
                    <asp:TextBox ID="txtdl_giaphong" CssClass="text" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Trạng Thái:</td>
                <td>
                    <asp:TextBox ID="txtdl_trangthai" CssClass="text" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lbthemphong" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
