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
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }

        .events {
            margin: 30px 100px 30px 100px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="searchbar">
        <asp:TextBox ID="txtSearch" runat="server" Font-Overline="False" Font-Size="18pt" Height="40px" Width="500px"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" Height="35px" Width="75px" OnClick="btnSearch_Click" />
    </div>
    <div class="content">
        <div class="events">
            <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="Kullanıcılar"></asp:Label>
            </strong>
            <br />
            <hr />
            <asp:GridView ID="gridUsers" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="grid" GridLines="Vertical" OnRowCommand="gridUsers_RowCommand" Width="900px">
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
                <asp:Label ID="Label2" runat="server" Text="Topluluklar" CssClass="auto-style9"></asp:Label>
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
        <div class="events">
            <strong>
                <asp:Label ID="Label3" runat="server" Text="Etkinlikler" CssClass="auto-style9"></asp:Label>
            </strong>
            <br />
            <hr />
            <asp:GridView ID="gridEvents" runat="server" Width="900px" CssClass="grid" OnRowCommand="gridEvent_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
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
    </div>
</asp:Content>
