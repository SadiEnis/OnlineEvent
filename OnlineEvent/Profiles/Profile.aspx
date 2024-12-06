<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="OnlineEvent.Profiles.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
            display: flex;
            width: 1200px;
        }

        .box {
            width: auto;
            height: auto;
            background-color: #b1b1b1;
            margin: 10px;
        }

        .box2 {
            width: 750px;
            height: auto;
            background-color: #b1b1b1;
            margin: 10px;
        }

        .center-img {
            margin: 20px;
            border: solid 2px;
            border-radius: 50%;
        }

        .ticket {
            display: flex;
            margin-left: 30px;
            margin-top: 10px;
            width: 500px;
            border: dotted 3px;
            border-radius: 10px;
        }

        .comminity {
            display: flex;
            margin-left: 150px;
            margin-top: 10px;
            width: auto;
            border: solid 3px;
            border-radius: 10px;
        }

        .auto-style9 {
            height: 23px;
        }

        .label-style {
            font-size: large;
        }

        .btn-style {
            background-color: white;
            border: solid 2px;
            border-radius: 5px;
        }

        .editprofile-style {
            width: 1200px;
            height: auto;
        }

        .editprofilecenter-style {
            border: solid 2px;
            border-radius: 10px;
            background-color: #b1b1b1;
            margin: 10px 50px 15px 50px;
        }

        .biletPage {
        }

        .labeldate-style {
            margin: 30px;
        }


        .auto-style10 {
            text-align: right;
            width: 699px;
        }

        .auto-style11 {
            width: 699px;
        }

        .auto-style13 {
            width: 699px;
            text-align: center;
        }

        .auto-style14 {
            width: 699px;
            text-align: center;
            font-size: large;
        }

        .auto-style19 {
            width: 1000px;
            height: 23px;
        }

        .auto-style20 {
            text-align: right;
            width: 699px;
            height: 23px;
        }

        .auto-style21 {
            width: 1000px;
        }

        .auto-style22 {
            height: 25px;
            width: 770px;
        }

        .auto-style23 {
            width: 770px;
        }

        .auto-style64 {
            height: 20px;
            width: 120px;
        }

        .auto-style65 {
            font-size: x-large;
        }

        .auto-style66 {
            height: 23px;
            width: 1000px;
            margin-left: 120px;
        }

        .auto-style67 {
            height: auto;
            width: 200px;
        }

        .auto-style68 {
            font-size: large;
            width: 1000px;
        }

        .auto-style69 {
            height: 40px;
            ;
            background-color: gold;
            width: 8px;
        }

        .auto-style71 {
            height: 3px;
        }

        .auto-style72 {
            width: 300px;
        }

        .auto-style73 {
            width: 7px;
        }

        .auto-style74 {
            font-size: large;
            width: 1000px;
            height: 40px;
        }

        .auto-style75 {
            height: 221px;
            width: 770px;
        }

        .auto-style76 {
            font-size: xx-large;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td class="auto-style23">
                <div class="container">
                    <div class="box">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style9"></td>
                                <td class="auto-style9"></td>
                                <td class="auto-style9"></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" CssClass="center-img" Height="100px" ImageUrl="~/Assets/Media/42-photo11.jpg" Width="100px" />
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Sadi Enis Güçlüer" CssClass="label-style"></asp:Label>
                                    &nbsp;|&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text="@sadienis" CssClass="label-style"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="Kayseri" CssClass="label-style"></asp:Label>
                                    &nbsp;|&nbsp;
                                    <asp:Label ID="Label4" runat="server" Text="Kasım2022" CssClass="label-style"></asp:Label>
                                </td>
                                <td class="auto-style9"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>

                    </div>
                    <div class="box2">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style21">&nbsp;</td>
                                <td class="auto-style10" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style21">&nbsp;</td>
                                <td class="auto-style10" colspan="2">
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style19"></td>
                                <td class="auto-style20" colspan="2"></td>
                            </tr>
                            <tr>
                                <td class="auto-style21">&nbsp;</td>
                                <td class="auto-style14"><strong>Bilet Sayısı</strong></td>
                                <td class="auto-style13"><strong><span class="label-style">Topluluk</span> <span class="label-style">Sayısı</span></strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style21">&nbsp;</td>
                                <td class="auto-style14">
                                    <asp:Label ID="Label5" runat="server" Text="5"></asp:Label>
                                </td>
                                <td class="auto-style13">
                                    <asp:Label ID="Label6" runat="server" Text="3" CssClass="label-style"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style21">&nbsp;</td>
                                <td class="auto-style11">&nbsp;</td>
                                <td class="auto-style11">&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">
                &nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style75">
                <div class="container">
                    <div class="biletPage">
                        <strong>
                            <asp:Label ID="Label7" runat="server" Text="Alınan Biletler" CssClass="auto-style76"></asp:Label>
                        </strong>
                        <asp:DataList ID="dtTickets" runat="server">
                            <ItemTemplate>
                                <div class="ticket">
                                    <div class="auto-style72">
                                        <table class="auto-style71">
                                            <tr>
                                                <td class="auto-style66"><strong>
                                                    <asp:Label ID="lblEventName" runat="server" CssClass="auto-style65" Text="ETKİNLİK ADI"></asp:Label>
                                                </strong></td>
                                                <td rowspan="2" class="auto-style73">
                                                    <asp:Image ID="imgEvent" runat="server" Height="75px" ImageUrl="~/Assets/Media/42-photo11.jpg" Width="75px" />
                                                </td>
                                                <td class="auto-style69">&nbsp;&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style74">Etkinlik Sahibi: <strong>
                                                    <asp:Label ID="lblComName" runat="server" Text="Topluluk Adı"></asp:Label>
                                                </strong></td>
                                                <td class="auto-style69">&nbsp;&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style68">ID: <strong>
                                                    <asp:Label ID="lblEventID" runat="server" Text="Etkinlik Numarası"></asp:Label>
                                                </strong></td>
                                                <td class="auto-style73">&nbsp;</td>
                                                <td class="auto-style69">&nbsp;</td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="background-color: #0088ff;" class="auto-style67">
                                        <div style="margin-top: 60px; margin-left: 40px" class="auto-style64">
                                            <asp:Label ID="lblDate" runat="server" Text="31.12.2024 00.00"></asp:Label>

                                        </div>

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>


                        <div class="ticket">
                            <div class="auto-style72">
                                <table class="auto-style71">
                                    <tr>
                                        <td class="auto-style66"><strong>
                                            <asp:Label ID="lblEventName" runat="server" CssClass="auto-style65" Text="ETKİNLİK ADI"></asp:Label>
                                        </strong></td>
                                        <td rowspan="2" class="auto-style73">
                                            <asp:Image ID="imgEvent" runat="server" Height="75px" ImageUrl="~/Assets/Media/42-photo11.jpg" Width="75px" />
                                        </td>
                                        <td class="auto-style69">&nbsp;&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style74">Etkinlik Sahibi: <strong>
                                            <asp:Label ID="lblComName" runat="server" Text="Topluluk Adı"></asp:Label>
                                        </strong></td>
                                        <td class="auto-style69">&nbsp;&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style68">ID: <strong>
                                            <asp:Label ID="lblEventID" runat="server" Text="Etkinlik Numarası"></asp:Label>
                                        </strong></td>
                                        <td class="auto-style73">&nbsp;</td>
                                        <td class="auto-style69">&nbsp;</td>
                                    </tr>
                                </table>
                            </div>
                            <div style="background-color: #0088ff;" class="auto-style67">
                                <div style="margin-top: 60px; margin-left: 40px" class="auto-style64">
                                    <asp:Label ID="lblDate" runat="server" Text="31.12.2024 00.00"></asp:Label>

                                </div>

                            </div>
                        </div>


                    </div>
                    <div class="toplulukPage">
                        <strong>
                            <asp:Label ID="Label8" runat="server" Text="Takip Edilen Topluluklar" CssClass="auto-style76"></asp:Label>
                        </strong>
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <div class="comminity">
                                    <div class="auto-style72">
                                        <table class="auto-style71">
                                            <tr>
                                                <td class="auto-style66"><strong>
                                                    <asp:Label ID="lblCommName" runat="server" CssClass="auto-style65" Text="TOPLULUK ADI"></asp:Label>
                                                </strong></td>
                                                <td rowspan="2" class="auto-style73">
                                                    <asp:Image ID="Image2" runat="server" Height="75px" ImageUrl="~/Assets/Media/42-photo11.jpg" Width="75px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style74">Yönetici Adı: <strong>
                                                    <asp:Label ID="lbl" runat="server" Text="Yönetici Adı"></asp:Label>
                                                </strong></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style68">ID: <strong>
                                                    <asp:Label ID="Label9" runat="server" Text="Topluluk Numarası"></asp:Label>
                                                </strong></td>
                                                <td class="auto-style73">&nbsp;</td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>


                        <div class="comminity">
                            <div class="auto-style72">
                                <table class="auto-style71">
                                    <tr>
                                        <td class="auto-style66"><strong>
                                            <asp:Label ID="lblCommName" runat="server" CssClass="auto-style65" Text="TOPLULUK ADI"></asp:Label>
                                        </strong></td>
                                        <td rowspan="2" class="auto-style73">
                                            <asp:Image ID="Image2" runat="server" Height="75px" ImageUrl="~/Assets/Media/42-photo11.jpg" Width="75px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style74">Yönetici Adı: <strong>
                                            <asp:Label ID="lbl" runat="server" Text="Yönetici Adı"></asp:Label>
                                        </strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style68">ID: <strong>
                                            <asp:Label ID="Label9" runat="server" Text="Topluluk Numarası"></asp:Label>
                                        </strong></td>
                                        <td class="auto-style73">&nbsp;</td>
                                    </tr>
                                </table>
                            </div>
                        </div>


                    </div>
                </div>

            </td>
        </tr>
    </table>
</asp:Content>
