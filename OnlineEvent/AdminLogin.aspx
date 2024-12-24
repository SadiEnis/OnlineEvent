<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OnlineEvent.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>onlinevent.com::login</title>
    <link href="style.css" rel="stylesheet" />
    <style type="text/css">
        .login {
            width: 400px;
            height: auto;
            margin: auto;
            background-color: white;
            border-color: gray;
            border: solid 2px;
            border-radius: 15px;
            margin-top: 200px;
            margin-bottom: 250px;
        }

        .login-table {
            margin: auto
        }

        .login-btn {
            width: 200px;
            height: 30px;
            border: solid 1px;
            border-color: black;
            border-radius: 10px;
            font-size: 15px;
            margin: 10px;
        }

            .login-btn:hover {
                border: solid 2px;
            }

        .login-txt {
            width: 300px;
            height: 30px;
            border: solid 1px;
            border-color: black;
            border-radius: 10px;
            margin: 3px;
            font-size: 15px;
        }

            .login-txt:hover {
                border-radius: 15px;
                border: solid 2px;
            }

            .login-txt:focus {
                border-radius: 12px;
            }

        td a {
            color: black;
            font-size: medium;
        }

        hr {
            width: 250px;
            border: none;
            height: 2px;
            background-color: black;
            box-shadow: none;
        }

        .auto-style11 {
            text-align: left;
            font-size: large;
        }

        .auto-style12 {
            font-size: x-large;
        }

        .auto-style15 {
            text-align: right;
            height: 35px;
            width: 162px;
        }

        .auto-style20 {
            font-size: x-large;
            height: 29px;
            text-align: center;
        }

        .auto-style21 {
            text-align: center;
        }

        .auto-style23 {
            width: 119px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="background-color: white;" class="login">
                <table class="login-table">
                    <tr>
                        <td class="auto-style20" colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style20" colspan="2">
                            <strong>Admin Giriş</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style12" colspan="2">
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12" colspan="2">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="login-txt" placeholder="E-Posta">sadienis@onlinevent.com</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" colspan="2">
                            <asp:TextBox ID="txtSifre" runat="server" CssClass="login-txt" placeholder="Şifre" TextMode="Password">murat123</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" colspan="2">
                            <asp:Label ID="lblException" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21" colspan="2">
                            <asp:Button ID="btnLogin" runat="server" Height="30px" Text="Giriş Yap" CssClass="login-btn" OnClick="btnLogin_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;" class="auto-style23">
                            &nbsp;</td>
                        <td class="auto-style15">
                            &nbsp;</td>
                    </tr>
                    </table>
            </div>
            <div style="height: 50px"></div>
        </div>
    </form>
</body>
</html>
