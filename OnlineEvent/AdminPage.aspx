<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="OnlineEvent.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>onlinevent.com::admin</title>
    <link href="admin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 200px; width: 1000px; margin-bottom: 20px;">
            <asp:Image ID="Image1" runat="server" ImageUrl="/Assets/Media/onlinevent.comAdminBanner.png" />
        </div>
        <div class="container">
            <nav class="navbar">
                <asp:Button ID="btn1" runat="server" CssClass="custom-button" Height="40px" Text="Kullanıcılar" Width="150px" />
                <asp:Button ID="btn2" runat="server" CssClass="custom-button" Height="40px" Text="Kullanıcılar" Width="150px" />
                <asp:Button ID="btn3" runat="server" CssClass="custom-button" Height="40px" Text="Kullanıcılar" Width="150px" />
                <asp:Button ID="btn4" runat="server" CssClass="custom-button" Height="40px" Text="Kullanıcılar" Width="150px" />
                <asp:Button ID="btnPageInfo" runat="server" CssClass="custom-button" Height="40px" Text="Hakkımızda" Width="150px" />
                <asp:Button ID="btnMessages" runat="server" CssClass="custom-button" Height="40px" Text="Mesajlar" Width="150px" />
            </nav>
            <div class="content">
                <asp:Panel ID="pnlMessages" runat="server">
                    <asp:DataList ID="datalistMessages" runat="server">
                        <ItemTemplate>
                            <asp:TextBox ID="txtMessage" runat="server" Height="120px" TextMode="MultiLine" Width="500px" Enabled="False" Text='<%# Eval("Content") %>'></asp:TextBox><br />
                            <br />
                            <asp:TextBox ID="txtAdminNote" runat="server" Height="120px" TextMode="MultiLine" Width="500px" Text='<%# Eval("AdminNote") %>'></asp:TextBox><br />
                            <br />
                            <asp:Button ID="btnSend" runat="server" Text="Gönder" Height="30px" OnClick="btnSend_Click" Width="70px" CommandArgument='<%# Eval("FeedbackID") %>' OnCommand="btnSend_Command" />
                            <br />
                            <br />
                            <hr />
                            <br />
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                </asp:Panel>
                <asp:Panel ID="pnlInfo" runat="server"></asp:Panel>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
