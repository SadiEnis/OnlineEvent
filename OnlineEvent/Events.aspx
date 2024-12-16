<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="OnlineEvent.Events" %>

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
            display: none; /* Başlangıçta gizlenir */
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .event:hover .hidden-content {
            display: flex; /* Hover ile görünür hale gelir */
        }

        .label {
            font-size: 18px;
        }
        a {
            color: black
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="filter">
    </div>
    <div class="events">
        <asp:DataList ID="DataList" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" CellPadding="10" >
            <ItemTemplate>
                <div class="event">
                    <a href="EventDetail.aspx?request=<%# Eval("EventID") %>">
                        <asp:Image ID="imgEvent" runat="server" Width="200" ImageUrl="~/Assets/Media/42-photo11.jpg" />
                        <asp:Label ID="lblEventName" runat="server" Text='<%# Eval("EventName") %>' CssClass="label"></asp:Label>
                        <div class="hidden-content">
                            <asp:Label ID="lblCommunity" runat="server" Text='<%# Eval("CommunityName") %>'></asp:Label>
                            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("EventDate") %>'></asp:Label>
                        </div>
                    </a>
                </div>
            </ItemTemplate>
        </asp:DataList>

       <%-- <br />
        <br />
        <div class="event">
            <a href="#">
                <asp:Image ID="imgEvent" runat="server" Width="200" ImageUrl="~/Assets/Media/42-photo11.jpg" />
                <asp:Label ID="lblEventName" runat="server" Text="Etkinik Adı" CssClass="label"></asp:Label>
                <div class="hidden-content">
                    <asp:Label ID="lblCommunityName" runat="server" Text="KAYU Bilişim Kulübü"></asp:Label>
                    <asp:Label ID="lblEventDate" runat="server" Text="24.12.2024"></asp:Label>
                </div>
            </a>
        </div>--%>

    </div>
</asp:Content>
