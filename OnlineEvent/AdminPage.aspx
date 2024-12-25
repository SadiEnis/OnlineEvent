<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="OnlineEvent.AdminPage" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>onlinevent.com::admin</title>
    <link href="admin.css" rel="stylesheet" />
    <script>
        function closeBox() {
            document.getElementById("messagebox").style.display = "none";
            document.getElementById("messageboxOverlay").style.display = "none";
        }
    </script>
    <style>
        .message-box {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 1001;
            width: 200px;
            height: 100px;
        }

        .message-box-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 200%;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 1000;
        }

        .modal h3 {
            margin-top: 0;
        }

        .modal button {
            margin-top: 10px;
        }
        .auto-style1 {
            margin-left: 250px;
            text-align: left;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="banner">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/Media/onlinevent.comAdminBanner.png" Width="1200px" />
        </div>
        <div id="messageboxOverlay" class="message-box-overlay" onclick="closeBox()"></div>
        <div id="messagebox" class="message-box">
            <asp:Label ID="lblMessage" runat="server" Text="Mesaj Kaydedildi."></asp:Label>
        </div>
        <div class="container">
            <nav class="navbar">
                <asp:Button ID="btnUsers" runat="server" CssClass="custom-button" Height="40px" Text="Kullanıcılar" Width="150px" OnClick="btn_Click" />
                <asp:Button ID="btnCommunities" runat="server" CssClass="custom-button" Height="40px" Text="Topluluklar" Width="150px" OnClick="btn_Click" />
                <asp:Button ID="btnEvents" runat="server" CssClass="custom-button" Height="40px" Text="Etkinlikler" Width="150px" OnClick="btn_Click" />
                <asp:Button ID="btnSales" runat="server" CssClass="custom-button" Height="40px" Text="Satışlar" Width="150px" OnClick="btn_Click" />
                <asp:Button ID="btnInfo" runat="server" CssClass="custom-button" Height="40px" Text="Hakkımızda" Width="150px" OnClick="btn_Click" />
                <asp:Button ID="btnMessages" runat="server" CssClass="custom-button" Height="40px" Text="Mesajlar" Width="150px" OnClick="btn_Click" />
            </nav>
            <div class="auto-style1">
                <strong>
                <asp:Label ID="lblAdmin" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
                <br />
                </strong>
                <asp:Panel ID="pnlUsers" runat="server" >
                    <asp:GridView ID="gridViewUsers" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="800px" CssClass="grid-view">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="#f44336" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </asp:Panel>

                <asp:Panel ID="pnlCommunities" runat="server" Wrap="False" Visible="False">
                    <asp:GridView ID="gridViewCommunities" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="800px" CssClass="grid-view">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="#f44336" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </asp:Panel>

                <asp:Panel ID="pnlEvents" runat="server" Wrap="False" Visible="False">
                    <asp:GridView ID="gridViewEvents" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="800px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="#f44336" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </asp:Panel>

                <asp:Panel ID="pnlSales" runat="server" Visible="False" Wrap="False">
                    <asp:GridView ID="gridViewSales" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="800px">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="#f44336" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </asp:Panel>

                <asp:Panel ID="pnlInfo" runat="server" Visible="False">

                            <asp:TextBox ID="txtInfo" runat="server" Height="120px" TextMode="MultiLine" Width="500px" Text='<%# Eval("Content") %>'></asp:TextBox><br />
                            <br />
                            <asp:Button ID="btnEdit" runat="server" Text="Gönder" Height="30px" Width="70px" CommandName="Send" CommandArgument='<%# Eval("FeedbackId") %>' OnClick="btnEdit_Click" />
                            <br />
                            <br />
                </asp:Panel>

                <asp:Panel ID="pnlMessages" runat="server" Visible="False">
                    <asp:DataList ID="datalistMessages" runat="server" OnItemCommand="datalistMessages_ItemCommand">
                        <ItemTemplate>
                            <asp:TextBox ID="txtMessage" runat="server" Height="120px" TextMode="MultiLine" Width="500px" Enabled="False" Text='<%# Eval("Content") %>'></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtAdminNote" runat="server" Height="120px" TextMode="MultiLine" Width="500px" Text='<%# Eval("AdminNote") %>'></asp:TextBox><br />
                            <br />
                            <asp:Button ID="btnSend" runat="server" Text="Gönder" Height="30px" Width="70px" CommandName="Send" CommandArgument='<%# Eval("FeedbackId") %>' />
                            <br />
                            <br />
                            <hr />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                </asp:Panel>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
