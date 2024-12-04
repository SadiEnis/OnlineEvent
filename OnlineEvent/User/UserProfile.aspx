<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="OnlineEvent.User.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../style.css" rel="stylesheet" />
    <style type="text/css">
        .user-info {
            width: 200px;
            border: solid 2px;
            border-color: black;
            background-color: red;
        }

        .user-events {
            border: solid 2px;
            border-color: black;
            background-color: yellow;
        }

        .user-changes {
            border: solid 2px;
            border-color: black;
            background-color: blue;
        }

        .image {
            width: 100px;
            height: 100px;
            border: solid 2px;
            border-radius: 50%;
        }

        .imagebox {
            margin: auto;
            width: 100px;
            height: 100px;
        }

        .auto-style8 {
            width: 100px;
        }

        .auto-style9 {
            height: 23px;
        }

        .auto-style10 {
            height: 20px;
        }

        .auto-style11 {
            width: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td rowspan="2" class="auto-style8">
                <div class="user-info">

                    <table class="auto-style1">
                        <tr>
                            <td colspan="2" class="auto-style10">
                                <div class="imagebox">
                                    <img src="../Assets/Media/42-photo11.jpg" class="image" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">İsim</td>
                            <td class="auto-style9"></td>
                        </tr>
                        <tr>
                            <td>Soyisim</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>E-posta</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </td>
            <td>
                <div class="user-events">
                    &nbsp;
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div class="user-changes">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style11">
                                <asp:Button ID="Button1" runat="server" Height="40px" Text="+" Width="40px" BackColor="#0000FD" BorderStyle="Solid" Font-Bold="True" Font-Size="20pt" BorderWidth="0px" />
                            </td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Profil Güncelle" Font-Bold="True" Font-Overline="False" Font-Size="20pt"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">&nbsp;</td>
                            <td>
                                <table class="auto-style1">
                                    <tr>
                                        <td>İsim</td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Soyisim</td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" Width="250px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>E-posta</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
