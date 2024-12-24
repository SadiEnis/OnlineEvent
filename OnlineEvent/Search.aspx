<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="OnlineEvent.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .searchbar {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }

        .content {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="searchbar">
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" />
    </div>
    <div class="content"></div>
</asp:Content>
