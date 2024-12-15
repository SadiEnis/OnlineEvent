<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="CreateCommunity.aspx.cs" Inherits="OnlineEvent.CreateComminity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .login {
            width: 400px;
            height: auto;
            background-color: white;
            border-color: gray;
            border: solid 2px;
            border-radius: 15px;
            margin: 200px 400px 200px 400px;
        }

        .login-table {
            margin: auto
        }

        .auto-style20 {
            font-size: x-large;
            height: 29px;
            text-align: center;
        }

        .auto-style12 {
            font-size: x-large;
            text-align: center;
            height: 20px;
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

        .txt {
            width: 70px;
            height: 30px;
            border: solid 1px;
            border-color: black;
            border-radius: 10px;
            font-size: 15px;
        }

            .txt:hover {
                border-radius: 15px;
                border: solid 2px;
            }

            .txt:focus {
                border-radius: 12px;
            }

        .auto-style11 {
            text-align: center;
            font-size: large;
        }

        .auto-style15 {
            text-align: center;
            height: 35px;
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

        .auto-style22 {
            width: 155px;
        }

        .auto-style24 {
            text-align: left;
            font-size: large;
        }

        .auto-style25 {
            font-size: x-large;
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
                    <strong>Yeni Topluluk Oluştur</strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <hr style="border: 1px solid black;" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">
                    <asp:TextBox ID="txtName" runat="server" CssClass="login-txt" placeholder="Topluluk Adı"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">
                    <asp:TextBox ID="txtComUsername" runat="server" CssClass="login-txt" placeholder="Topluluk Kullanıcı Adı"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="login-txt" placeholder="Topluluk E-Mail"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">
                    <asp:TextBox ID="txtDesc" runat="server" CssClass="login-txt" placeholder="Topluluk Açıklaması" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">
                    <div style="display: flex;">
                        <asp:DropDownList ID="ddlCity" runat="server" Height="30px" Width="250px">
                        </asp:DropDownList>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">
                    <div style="height: 20px;">
                        <hr style="border: 1px solid black;" />
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style24" colspan="2">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="login-txt" placeholder="Topluluk Şifresi" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <asp:TextBox ID="txtPasswordAgain" runat="server" CssClass="login-txt" placeholder="Topluluk Şifresi" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <hr style="border: 1px solid black;" />
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    <asp:Label ID="lblException" runat="server" Font-Size="14pt" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="2">
                    <asp:Button ID="btnSave" runat="server" Height="30px" Text="Kaydet" CssClass="login-btn" OnClick="btnSave_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
            </tr>
        </table>
    </div>
    <div>&nbsp;</div>
</asp:Content>
