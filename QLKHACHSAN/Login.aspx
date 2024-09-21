<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QLKHACHSAN.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN</title>
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
        #form1 .login{
            display:block;
            width:350px;
            height:300px;
            margin:auto;
            transform: translateY(180px);
        }
        .forminfo{
            padding:10px 10px;
        }
        .headlogin {
            padding: 15px;
            color: white;
            font-family: "Poetsen One", sans-serif;
            font-weight: 400;
            font-style: normal;
            font-size: 40px;
        }
        .headuser{
            color:white;
            font-size:20px;
            text-align:left;
            font-family: "Poetsen One", sans-serif;
            font-weight: 400;
            font-style: normal;
        }
        .txt {
            border: 1px solid white;
            padding: 8px;
            border-radius: 10px
        }
        .txt:focus{
            outline:none;
        }
        .nutnhan{
            border: 1px solid white;
            border-radius:10px;
            background-color:white;
            color:#48dbfb;
            padding:3px 15px;
            font-family: "Poetsen One", sans-serif;
            font-weight: 400;
            font-style: normal;           
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Login ID="Login1" runat="server" CssClass="login" OnAuthenticate="Login1_Authenticate">
            <LayoutTemplate>
                <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td class="headlogin" align="center" colspan="2">LOGIN</td>
                                </tr>
                                <tr>
                                    <td class="forminfo" align="right">
                                        <asp:Label ID="UserNameLabel" CssClass="headuser" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                    </td>
                                    <td class="forminfo">
                                        <asp:TextBox ID="UserName" runat="server" CssClass="txt"></asp:TextBox>
                                        <%--<asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="forminfo" align="right">
                                        <asp:Label ID="PasswordLabel" CssClass="headuser" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                    </td>
                                    <td class="forminfo">
                                        <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
<%--                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>--%>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td class="forminfo" align="center" colspan="2" style="color:Red;">
                                        <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="forminfo" align="left">
                                        <asp:Button ID="LoginButton" CssClass="nutnhan" runat="server" CommandName="Login" Text="LOGIN" ValidationGroup="Login1" />
                                    </td>
                                    <td class="forminfo" align="right">
                                        <asp:Button ID="Button1" CssClass="nutnhan" runat="server" Text="SIGN UP" OnClick="Button1_Click"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:Button ID="Button2" CssClass="nutnhan" runat="server" Text="BACK" OnClick="Button2_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:Login>
    </form>
</body>
</html>
