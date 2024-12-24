<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Communities.aspx.cs" Inherits="OnlineEvent.Communities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .event {
            position: relative;
            width: 200px;
            text-align: center;
        }

        .hidden-content {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            display: none;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .event:hover .hidden-content {
            display: flex;
        }

        .label {
            font-size: 18px;
        }

        a {
            color: black
        }
        .auto-style9 {
            font-size: medium;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="filter">
    </div>
    <div class="events">
        <asp:DataList ID="DataList" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" CellPadding="10">
            <ItemTemplate>
                <div class="event">
                    <a href="Profiles/Commity.aspx?request=<%# Eval("CommunityID") %>">
                        <asp:Image ID="imgCom" runat="server" Width="200" ImageUrl="~/Assets/Media/42-photo11.jpg" />
                        <asp:Label ID="lblComName" runat="server" Text='<%# Eval("CommunityName") %>' CssClass="auto-style9"></asp:Label>
                        <div class="hidden-content">
                            <asp:Label ID="lblCommunity" runat="server" Text='<%# Eval("CommunityName") %>'></asp:Label>
                        </div>
                    </a>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
