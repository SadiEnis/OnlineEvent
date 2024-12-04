    <%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="OnlineEvent.User.UserProfile1" %>

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
        .biletPage{

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

        .auto-style48 {
            width: 278px;
        }

        .auto-style49 {
            height: 23px;
            width: 278px;
        }

        .auto-style54 {
            width: 500px;
        }

        .auto-style55 {
            height: 23px;
            text-align: center;
        }

        .auto-style56 {
            width: 278px;
            height: 54px;
        }

        .auto-style57 {
            width: 500px;
            height: 54px;
            text-align: center;
        }

        .auto-style60 {
            width: 260px;
        }

        .auto-style61 {
            width: 260px;
            height: 54px;
        }

        .auto-style62 {
            height: 23px;
            width: 260px;
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
                                    <asp:Button ID="btnEditProfile" runat="server" CssClass="btn-style" Text="Profili Düzenle" Height="40px" Width="120px" OnClick="btnEditProfile_Click" />
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
        </tr>
        <tr>
            <td class="auto-style22">
                <asp:Panel ID="pnlEditProfile" runat="server" Visible="False">
                    <div class="editprofile-style">
                        <div class="editprofilecenter-style">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style48">&nbsp;</td>
                                    <td class="auto-style54">&nbsp;</td>
                                    <td class="auto-style54">&nbsp;</td>
                                    <td class="auto-style60">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style56"></td>
                                    <td class="auto-style57">İsim:
                                        <asp:TextBox ID="txtName" runat="server" Height="25px" Width="300px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style57">Soyisim:
                                        <asp:TextBox ID="txtSurname" runat="server" Height="25px" Width="300px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style61"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style49">&nbsp;</td>
                                    <td class="auto-style55" colspan="2">E-Posta:
                                        <asp:TextBox ID="txtMail" runat="server" Height="25px" Width="500px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style62">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style49"></td>
                                    <td class="auto-style55" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp; Şifre:
                                        <asp:TextBox ID="txtMail0" runat="server" Height="25px" Width="500px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style62"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style49">&nbsp;</td>
                                    <td class="auto-style55" colspan="2">Resim:<asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="500px" />
                                        <asp:Button ID="btnSaveImage0" runat="server" CssClass="btn-style" Height="30px" Text="Yeni Resmi Kaydet" Width="150px" />
                                    </td>
                                    <td class="auto-style62">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style49">&nbsp;</td>
                                    <td class="auto-style55" colspan="2">&nbsp;</td>
                                    <td class="auto-style62">&nbsp;</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <div class="biletPage">

                </div>
            </td>
        </tr>
    </table>
</asp:Content>
