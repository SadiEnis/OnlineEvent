﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Commity.aspx.cs" Inherits="OnlineEvent.Profiles.Commity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function copyPageUrl() {
            const pageUrl = window.location.href;
            navigator.clipboard.writeText(pageUrl)
                .then(() => {
                    alert("Sayfanın linki kopyalandı: " + pageUrl);
                })
                .catch(err => {
                    console.error("Link kopyalanamadı: ", err);
                });
        }
    </script>

    <style type="text/css">
        .container {
            display: flex;
        }

        .commInfo {
            margin: 30px;
            border: solid 2px;
            border-color: #9d9d9d
        }

        .commEvents {
            margin-left: 50px;
            width: 850px;
            height: 500px
        }

        .commManager {
            margin-left: 50px;
            margin-bottom: 30px;
            width: 200px;
            height: 275px;
            border: solid 2px;
            border-radius: 15px;
        }

        .imgComm {
            border: solid 2px;
            border-radius: 15px;
        }

        .copybutton {
            border: solid 1px;
            border-radius: 5px;
            background-color: white;
            padding: 10px;
        }

        .followComm {
            border: solid 2px;
            border-radius: 5px;
            background-color: limegreen;
        }

        .microNav {
            display: flex;
            justify-content: center;
        }

        .micronav-button {
            border: solid 0px;
            border-radius: 5px;
            background-color: white;
            width: 100px;
            height: 40px;
            padding: 10px;
            margin: 10px;
        }

            .micronav-button:hover {
                border: solid 1px;
            }

        .manager-photo {
            border: solid 2px;
            border-radius: 10px;
            margin: 15px;
        }

        hr {
            margin: 0px;
        }


        .auto-style8 {
            width: 100px;
        }

        .auto-style9 {
            font-size: x-large;
            margin-left: 15px;
        }

        .auto-style10 {
            width: 550px;
        }

        .auto-style11 {
            font-size: large;
            margin-left: 25px;
        }

        .auto-style14 {
            text-align: right;
            width: 150px;
        }

        .auto-style15 {
            width: 150px;
        }

        .auto-style16 {
            width: 98px;
        }

        .auto-style17 {
            width: 98px;
            text-align: right;
        }

        .auto-style18 {
            text-align: center;
        }

        .auto-style19 {
            font-size: large;
            margin: 30px;
        }

        .auto-style20 {
            text-align: center;
            font-size: x-large;
        }

        .auto-style21 {
            font-size: x-large;
            margin: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="commInfo">

        <table class="auto-style1">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Image ID="imgComm" runat="server" CssClass="imgComm" Height="150px" ImageUrl="~/Assets/Media/42-photo11.jpg" Width="150px" />
                </td>
                <td class="auto-style10"><strong>
                    <asp:Label ID="lblCommName" runat="server" CssClass="auto-style9" Text="TOPLULUK ADI"></asp:Label>
                    <br />
                </strong>
                    <asp:Label ID="lblCity" runat="server" CssClass="auto-style11" Text="Şehir"></asp:Label>
                    &nbsp;-
                    <asp:Label ID="lblMember" runat="server" Text="000"></asp:Label>
                    &nbsp;üye</td>
                <td class="auto-style17">
                    <asp:ImageButton ID="ImageButton1" runat="server" Width="25px" CssClass="copybutton" Height="25px" ImageUrl="~/Assets/Media/share.png" OnClientClick="copyPageUrl(); return false;" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="btnFollow" runat="server" Height="50px" Text="Topluluğu Takip Et" Width="150px" CssClass="followComm" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
        </table>
    </div>

    <div class="container">
        <div class="commEvents">
            <hr />
            <div class="microNav">
                <asp:Button ID="btnInfo" runat="server" Text="Hakkında" CssClass="micronav-button" OnClick="btnInfo_Click" />
                <asp:Button ID="btnEvents" runat="server" Text="Etkinlikler" CssClass="micronav-button" OnClick="btnEvents_Click" />
                <asp:Button ID="btnMembers" runat="server" Text="Üyeler" CssClass="micronav-button" OnClick="btnMembers_Click" />
            </div>
            <hr />
            <asp:Panel ID="panelInfo" runat="server">
                <strong><span class="auto-style21">Hakkında </span></strong>
                <br />
                <asp:Label ID="lblInfo" runat="server" Text="Topluluğun hakkında yazısı" CssClass="auto-style19"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="panelEvents" runat="server" Visible="False">
                <strong><span class="auto-style21">Etkinlikler </span></strong>
                <div style="margin: 50px">
                    <asp:GridView ID="gridEvents" runat="server" Width="460px"></asp:GridView>
                </div>
            </asp:Panel>
            <asp:Panel ID="panelMembers" runat="server" Visible="False">
                <strong><span class="auto-style21">Üyeler </span></strong>
                <div style="margin: 50px">
                    <asp:GridView ID="gridMembers" runat="server" Width="460px"></asp:GridView>
                </div>
            </asp:Panel>
        </div>
        <div class="commManager">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style20">
                        <strong>Yönetici</strong>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Image ID="imaManager" runat="server" Height="150px" Width="150px" CssClass="manager-photo" ImageUrl="~/Assets/Media/42-photo11.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="lblManager" runat="server" CssClass="auto-style19" Text="Sadi Enis Güçlüer"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>