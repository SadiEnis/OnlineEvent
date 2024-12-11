<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="OnlineEvent.test" %>

<%--<!DOCTYPE html>
<html>
<head>
    <title>Bilet Alma Paneli</title>
    <script>
        function togglePanel() {
            var panel = document.getElementById("<%= pnlTicket.ClientID %>");
            if (panel.style.display === "none") {
                panel.style.display = "block";
            } else {
                panel.style.display = "none";
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnOpenPanel" runat="server" Text="Bilet Al" OnClientClick="togglePanel(); return false;" />
        
        <asp:Panel ID="pnlTicket" runat="server" Style="display: none; border: 1px solid black; padding: 20px; margin-top: 20px;">
            <h3>Bilet Alma Paneli</h3>
            <asp:Label ID="lblTicketInfo" runat="server" Text="Bilet bilgilerinizi giriniz:"></asp:Label><br /><br />
            <asp:TextBox ID="txtName" runat="server" Placeholder="Adınız"></asp:TextBox><br /><br />
            <asp:TextBox ID="txtEvent" runat="server" Placeholder="Etkinlik Adı"></asp:TextBox><br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Bileti Al"/>
        </asp:Panel>
    </form>
</body>
</html>--%>

<%-----------------------------------------------------------------------------------------------------------------------------%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CSS Hidden Hover</title>
    <style>
        .container {
            position: relative;
            width: 200px;
            height: 200px;
            background-color: lightblue;
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

        .container:hover .hidden-content {
            display: flex; /* Hover ile görünür hale gelir */
        }
    </style>
</head>
<body>
    <div class="container">
        Hover Me!
        <div class="hidden-content">
            Hidden Content
        </div>
    </div>
</body>
</html>
