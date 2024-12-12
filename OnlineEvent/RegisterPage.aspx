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
            width: 200px;
            height: 30px;
            border: solid 1px;
            border-color: black;
            border-radius: 10px;
            background-color: white;
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

            .login-txt::placeholder {
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
            text-align: center;
            height: 35px;
        }

        .auto-style20 {
            font-size: x-large;
            height: 29px;
            text-align: center;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color: white;" class="login">
        <table class="login-table">
            <tr>
                <td class="auto-style20" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style20" colspan="2">
                    <strong>Kayıt Ol</strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <hr />
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <asp:TextBox ID="txtName" runat="server" CssClass="login-txt" placeholder="İsim"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <asp:TextBox ID="txtLastname" runat="server" CssClass="login-txt" placeholder="Soyisim"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <div style="height: 20px;"></div>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="login-txt" placeholder="Kullanıcı Adı"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="login-txt" placeholder="E-Posta"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="login-txt" placeholder="Şifre" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <asp:TextBox ID="txtPasswordAgain" runat="server" CssClass="login-txt" placeholder="Şifre Tekrar" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="2">
                    <asp:Label ID="lblException" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="2">
                    <asp:Button ID="btnRegister" runat="server" Height="30px" Text="Kayıt Ol" CssClass="login-btn" OnClick="btnRegister_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    <div style="height: 50px"></div>
</asp:Content>
