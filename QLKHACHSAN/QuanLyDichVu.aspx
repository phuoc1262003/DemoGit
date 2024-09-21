<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyDichVu.aspx.cs" Inherits="QLKHACHSAN.QuanLyDichVu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản Lý Dịch Vụ</title>
    <style>
        body {
            
            background-color: #F0EBEF;
        }

        .tieude h2 {
            text-align: center;
            font-size: 25px;
            font-weight: 700;
        }

        .nutbtn {
            margin-left: 20px;
            margin-top: 20px;
        }

        .trove {
            font-size: 15px;
            font-weight: bold;
            border: 1px solid #48DBFC;
            border-radius: 10px;
            background-color: #48DBFC;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
        }

            .trove:hover {
                background-color: #81ecec;
            }

        .box {
            border: none;
            background-color: transparent;
        }

            .box:focus {
                outline: none;
            }

        .optione {
            width:130px;
            text-align: center;
            margin: 15px 0;
        }

        .linkbtn {
            color: red;
            font-size: 15px;
            text-decoration: none;
            background-color: white;
            padding: 4px 10px;
            border: 1px solid white;
            border-radius: 10px;
        }

            .linkbtn:hover {
                background-color: #dfe6e9;
                color: #ff7675;
                border: none;
            }

        .lbthongbao {
            text-align: center;
            color: red;
        }

        .them {
            margin-top: 50px;
            background-color: #F0EBEF;
            display: flex;
            justify-content: center;
            align-items: center;
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

        .btnthemdichvu {
            font-size: 15px;
            font-weight: bold;
            border: 1px solid #48DBFC;
            border-radius: 10px;
            background-color: #48DBFC;
            color: white;
            padding: 5px 5px;
        }

            .btnthemdichvu:hover {
                background-color: #81ecec;
            }

        .lbtbthem {
            color: red;
        }

        .grid {
            margin: auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div class="tieude">
            <div class="nutbtn">
                 <asp:LinkButton ID="btntrove" CssClass="trove" runat="server" OnClick="btntrove_Click">Trở về</asp:LinkButton>
            </div>    
            <h2>Quản Lý Dịch Vụ</h2>
        </div>
        <div class="container">
            <div class="qldichvu">
            <asp:GridView ID="grid_qldichvu" runat="server" CssClass="grid" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Mã Dịch Vụ">
                    <ItemTemplate>
                        <asp:TextBox ID="txtmadv" CssClass="box" runat="server" Text='<%# Eval("MaDV") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên Dịch Vụ">
                    <ItemTemplate>
                        <asp:TextBox ID="txttendv" CssClass="box" runat="server" Text='<%# Eval("TenDV") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hình Ảnh">
                    <ItemTemplate>
                        <asp:TextBox ID="txthinhanh" CssClass="box" runat="server" Text='<%# Eval("HinhAnh") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Giá Dịch Vụ">
                    <ItemTemplate>
                        <asp:TextBox ID="txtgia" CssClass="box"  runat="server" Text='<%# Eval("GiaDV") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Option">
                    <ItemTemplate>
                        <div class="optione">
                             <asp:LinkButton ID="btnxoaDV" CssClass="linkbtn" runat="server" CommandArgument='<%# Eval("MaDV") %>' OnClick="btnxoaDV_Click">Xóa Dịch Vụ</asp:LinkButton>
                        </div>
                        <div class="optione">
                            <asp:LinkButton ID="btnsuaDV" CssClass="linkbtn" runat="server" CommandArgument='<%# Eval("MaDV") %>' OnClick="btnsuaDV_Click">Sửa Dịch Vụ</asp:LinkButton>
                        </div>              
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>     
        <div class="lbthongbao">
            <asp:Label ID="lbthongbao" CssClass="lbthongbao1" runat="server" Text=""></asp:Label>
        </div>
        <table class="them">
            <tr>
                <td align="center" colspan="3">Thêm Dịch Vụ</td>
            </tr>
            <tr">
                <td>Mã Dịch Vụ:</td>
                <td>
                    <asp:TextBox ID="txtdl_madv" CssClass="text" runat="server"></asp:TextBox>
                </td>
                <td rowspan="4">
                    <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click" CssClass="btnthemdichvu" />
                </td>
            </tr>
            <tr>
                <td>Tên Dịch Vụ:</td>
                <td>
                    <asp:TextBox ID="txtdl_tendv" CssClass="text" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Hình Ảnh:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Giá Dịch Vụ:</td>
                <td>
                    <asp:TextBox ID="txtdl_giadv" CssClass="text" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:Label ID="lbthem" runat="server" Text="" CssClass="lbtbthem"></asp:Label>
                </td>
            </tr>
        </table>
        </div>     
    </form>
</body>
</html>
