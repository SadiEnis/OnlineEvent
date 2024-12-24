<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="OnlineEvent.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btn {
            margin-top: 165px;
            margin-left: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="margin-top: 30px; height: 500px; color: black; background-image: url('/Assets/Media/main.png');">
            <asp:Button ID="btnCom" runat="server" Text="Topluluk Oluştur" Height="60px" Width="200px" CssClass="btn" />
        </div>
    </div>
    <br />
    test
    <br />
    <br />
    test<br />
    <br />
    test
    <br />
    test 
    <div style="height: 1000px;"></div>
</asp:Content>
