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

        </style>
    <script>

</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="filter">
    </div>
    <div class="events">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="10">
            <ItemTemplate>
                <div class="event">
                    <asp:Image ID="imgEvent" runat="server" Width="200" ImageUrl="~/Assets/Media/42-photo11.jpg" />
                    <asp:Label ID="lblEventName" runat="server" Text="Etkinik Adı" CssClass="label"></asp:Label>
                    <div class="hidden-content">
                        23-12-2024
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>


        <br />
        <br />
        <div class="event">
            <asp:Image ID="imgEvent" runat="server" Width="200" ImageUrl="~/Assets/Media/42-photo11.jpg" />
            <asp:Label ID="lblEventName" runat="server" Text="Etkinik Adı" CssClass="label"></asp:Label>
            <div class="hidden-content">
                23-12-2024
            </div>
        </div>

    </div>
</asp:Content>
