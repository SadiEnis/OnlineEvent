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
<html>
<head>
    <title>Bilet Alma Paneli</title>
    <style>
        /* Arka planı karartma */
        .modal-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.7);
            z-index: 1000;
        }

        /* Pop-up panel stili */
        .modal {
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
            width: 400px;
        }

        .modal h3 {
            margin-top: 0;
        }

        .modal button {
            margin-top: 10px;
        }
    </style>
    <script>
        function openModal() {
            document.getElementById("modalOverlay").style.display = "block";
            document.getElementById("modal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("modalOverlay").style.display = "none";
            document.getElementById("modal").style.display = "none";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Buton: Modalı açar -->
        <asp:Button ID="btnOpenModal" runat="server" Text="Bilet Al" OnClientClick="openModal(); return false;" />

        <!-- Arka plan karartma -->
        <div id="modalOverlay" class="modal-overlay" onclick="closeModal()"></div>

        <!-- Pop-up panel -->
        <div id="modal" class="modal">
            <h3>Bilet Alma Paneli</h3>
            <asp:Label ID="lblTicketInfo" runat="server" Text="Bilet bilgilerinizi giriniz:"></asp:Label><br /><br />
            <asp:TextBox ID="txtName" runat="server" Placeholder="Adınız"></asp:TextBox><br /><br />
            <asp:TextBox ID="txtEvent" runat="server" Placeholder="Etkinlik Adı"></asp:TextBox><br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Bileti Al" />
            <button type="button" onclick="closeModal()">Kapat</button>
        </div>
    </form>
</body>
</html>
