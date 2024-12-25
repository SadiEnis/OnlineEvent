<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="OnlineEvent.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btn {
            margin-top: 165px;
            margin-left: 400px;
        }

        .events {
            margin: 30px 100px 30px 100px;
        }

        .grid {
            font-size: 15px;
        }

        .btnDown {
            margin: 5px;
            font-size: 35px;
        }

        .auto-style9 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="margin-top: 30px; height: 500px; color: black; background-image: url('/Assets/Media/main.png');">
            <asp:Button ID="btnCom" runat="server" Text="Topluluk Oluştur" Height="60px" Width="200px" CssClass="btn" OnClick="btnCom_Click" />
        </div>
    </div>
    <br />
    <div class="events">
        <strong>
            <asp:Label ID="Label1" runat="server" Text="Başlıca Etkinlikler" CssClass="auto-style9"></asp:Label>
        </strong>
        <br />
        <hr />
        <asp:GridView ID="gridEvents" runat="server" Width="900px" CssClass="grid" OnRowCommand="gridEvents_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="SelectRow" HeaderText="Detay" ShowHeader="True" Text="Detail" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#ff0f39" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </div>
    <br />
    <br />
    <div class="events">
        <strong>
            <asp:Label ID="Label2" runat="server" Text="Başlıca Topluluklar" CssClass="auto-style9"></asp:Label>
        </strong>
        <br />
        <hr />
        <asp:GridView ID="gridCom" runat="server" Width="900px" CssClass="grid" OnRowCommand="gridCom_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="SelectRow" HeaderText="Detay" ShowHeader="True" Text="Detail" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#ff0f39" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </div>
    <br />
    <br />
    <div style="display:flex; margin: 30px 100px 30px 100px; text-align: center;">
        <div>
            <asp:Button ID="btnEvents" runat="server" Text="Etkinlikleri Keşfet" Height="200px" Width="500px" CssClass="btnDown" OnClick="btnEvents_Click1"/>
        </div>
        <div>
            <asp:Button ID="btnCreateCom" runat="server" Text="Topluluk Oluştur" Height="200px" Width="500px" CssClass="btnDown" OnClick="btnCom_Click" />
        </div>
    </div>
    <div style="height: 200px;"></div>
</asp:Content>
