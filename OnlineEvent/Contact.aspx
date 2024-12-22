<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="OnlineEvent.Contact" %>

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

        .auto-style25 {
            font-size: x-large;
        }
        .auto-style26 {
            border: 1px solid black;
            border-radius: 10px;
            margin: 3px;
            font-size: 15px;
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
                    <strong>Bize Ulaş</strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    <hr style="border: 1px solid black;" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="login-txt" placeholder="Username"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25" colspan="2">
                    <asp:TextBox ID="txtDesc" runat="server" CssClass="auto-style26" placeholder="Mesaj" Height="200px" TextMode="MultiLine" Width="307px"></asp:TextBox>
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