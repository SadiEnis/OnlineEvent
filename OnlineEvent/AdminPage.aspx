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

        .modal-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 200px;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 1000;
        }

        .modal {
            display:none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 1001;
            width: 400px;
        }

            .modal h3 {
                margin-top: 0;
            }

            .modal button {
                margin-top: 10px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="banner">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/Media/onlinevent.comAdminBanner.png" />
        </div>
        <div id="messageboxOverlay" class="message-box-overlay" onclick="closeBox()"></div>
        <div id="messagebox" class="message-box">
            <asp:Label ID="lblMessage" runat="server" Text="Mesaj Kaydedildi."></asp:Label>
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
                <asp:Panel ID="pnlInfo" runat="server"></asp:Panel>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
