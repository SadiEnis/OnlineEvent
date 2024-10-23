<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="OnlineEvent.RegisterPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            width: 100px;
            height: 30px;
            border: solid 1px;
            border-color: black;
            border-radius: 10px;
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
        }

            .login-txt:hover {
                border-radius: 12px;
            }

            .login-txt:focus {
                border-radius: 12px;
            }
            .login-txt::placeholder {

            }

        td a {
            color: black;
            font-size: medium;
        }

        hr {
            width: 130px;
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
        }

        .auto-style18 {
            width: 141px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color: white;" class="login">
        <table class="login-table">
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2"><strong>E-Posta</strong></td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="login-txt" placeholder="Mail"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <strong>Şifre</strong></td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <asp:TextBox ID="txtSifre" runat="server" CssClass="login-txt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="2">
                    <asp:Button ID="btnLogin" runat="server" Height="30px" Text="Giriş Yap" CssClass="login-btn" />
                </td>
            </tr>
            <tr>
                <td style="text-align: left;">
                    <a href="#"><strong>Hesap Oluştur</strong></a></td>
                <td class="auto-style15">
                    <a href="#"><strong>Şifremi Unuttum</strong></a></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <div style="height: 200px"></div>
</asp:Content>
