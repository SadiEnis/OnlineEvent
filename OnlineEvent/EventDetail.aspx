<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="EventDetail.aspx.cs" Inherits="OnlineEvent.EventDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function copyPageUrl() {
            const pageUrl = window.location.href;
            navigator.clipboard.writeText(pageUrl)
                .then(() => {
                    alert("Sayfanın linki kopyalandı: " + pageUrl);
                })
                .catch(err => {
                    console.error("Link kopyalanamadı: ", err);
                });
        }
        function openModal() {
            document.getElementById("modalOverlay").style.display = "block";
            document.getElementById("modal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("modalOverlay").style.display = "none";
            document.getElementById("modal").style.display = "none";
        }
    </script>

    <style type="text/css">
        .container {
            display: flex;
        }

        .commInfo {
            margin: 30px;
            border: solid 2px;
            border-color: #9d9d9d
        }

        .commEvents {
            margin-left: 50px;
            width: 850px;
            height: 500px
        }

        .commManager {
            margin-left: 50px;
            margin-bottom: 30px;
            width: 200px;
            height: 275px;
            border: solid 2px;
            border-radius: 15px;
        }

        .imgComm {
            border: solid 2px;
            border-radius: 15px;
        }

        .copybutton {
            border: solid 1px;
            border-radius: 5px;
            background-color: white;
            padding: 10px;
        }

        .followComm {
            border: solid 2px;
            border-radius: 5px;
            background-color: white;
        }

        .microNav {
            display: flex;
            justify-content: center;
        }

        .micronav-button {
            border: solid 0px;
            border-radius: 5px;
            background-color: white;
            width: 100px;
            height: 40px;
            padding: 10px;
            margin: 10px;
        }

            .micronav-button:hover {
                border: solid 1px;
            }

        .manager-photo {
            border: solid 2px;
            border-radius: 10px;
            margin: 15px;
        }

        hr {
            margin: 0px;
        }

        .editcomm-style {
            width: 1200px;
            height: auto;
        }

        .editcommcenter-style {
            border: solid 2px;
            border-radius: 10px;
            background-color: #b1b1b1;
            margin: 10px 50px 15px 50px;
        }

        .btn-createvent {
            border: solid 2px;
            border-radius: 5px;
            width: 100px;
            height: 40px;
            margin-top: 10px;
            background-color: white;
        }

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

        .summit-button {
            height: 30px;
            width: 80px;
            border: solid 2px;
            border-radius: 10px;
            background-color: lawngreen;
            margin: 10px;
        }

        .close-button {
            height: 30px;
            width: 80px;
            border: solid 2px;
            border-radius: 10px;
            background-color: red;
            margin: 10px;
        }

        .auto-style8 {
            width: 100px;
        }

        .auto-style9 {
            font-size: x-large;
            margin-left: 15px;
        }

        .auto-style10 {
            width: 550px;
        }

        .auto-style11 {
            font-size: large;
            margin-left: 25px;
        }

        .auto-style14 {
            text-align: right;
            width: 150px;
        }

        .auto-style15 {
            width: 150px;
        }

        .auto-style16 {
            width: 98px;
        }

        .auto-style17 {
            width: 98px;
            text-align: right;
        }

        .auto-style18 {
            text-align: center;
        }

        .auto-style19 {
            font-size: large;
            margin: 30px;
        }

        .auto-style20 {
            text-align: center;
            font-size: x-large;
        }

        .auto-style21 {
            font-size: x-large;
            margin: 20px;
        }

        .auto-style22 {
            width: 100px;
            height: 23px;
        }

        .auto-style23 {
            width: 550px;
            height: 23px;
        }

        .auto-style24 {
            width: 98px;
            height: 23px;
        }

        .auto-style25 {
            width: 150px;
            height: 23px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="commInfo">

        <div id="modalOverlay" class="modal-overlay" onclick="closeModal()"></div>
        <div id="modal" class="modal">
            <h3>Bilet Al</h3>
            <%--<asp:Label ID="lblTicketInfo" runat="server" Text="Bilet bilgilerinizi giriniz:"></asp:Label><br />
            <br />
            <asp:TextBox ID="txtName" runat="server" Placeholder="Adınız"></asp:TextBox><br />
            <br />
            <asp:TextBox ID="txtEvent" runat="server" Placeholder="Etkinlik Adı"></asp:TextBox><br />
            <br />--%>
            <asp:Label ID="Label1" runat="server" Text="Bu bilet ücretsizdir. Biletlerinize eklemek için ilgili butona tıklayınız."></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Bileti Al" CssClass="summit-button" />
            <button type="button" onclick="closeModal()" class="close-button">Kapat</button>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Image ID="imgEvent" runat="server" CssClass="imgComm" Height="150px" ImageUrl="~/Assets/Media/42-photo11.jpg" Width="150px" />
                </td>
                <td class="auto-style10"><strong>
                    <asp:Label ID="lblEventName" runat="server" CssClass="auto-style9" Text="ETKİNLİK ADI"></asp:Label>
                    <br />
                </strong>
                    <asp:Label ID="lblCity" runat="server" CssClass="auto-style11" Text="Şehir"></asp:Label>
                    &nbsp;-
                    <asp:Label ID="lblAttender" runat="server" Text="000"></asp:Label>
                    &nbsp;Katılımcı</td>
                <td class="auto-style17">
                    <asp:ImageButton ID="ImageButton1" runat="server" Width="25px" CssClass="copybutton" Height="25px" ImageUrl="~/Assets/Media/share.png" OnClientClick="copyPageUrl(); return false;" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="btnBuyTicket" runat="server" Height="50px" Text="Bilet Al" Width="150px" CssClass="followComm" OnClientClick="openModal(); return false;" />
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style23"></td>
                <td class="auto-style24"></td>
                <td class="auto-style25"></td>
            </tr>
        </table>
    </div>

    <div class="container">
        <div class="commEvents">
            <hr />
            <div class="microNav">
                <asp:Button ID="btnInfo" runat="server" Text="Hakkında" CssClass="micronav-button" OnClick="btnInfo_Click" />
                <asp:Button ID="btnAttendee" runat="server" Text="Katılımcılar" CssClass="micronav-button" OnClick="btnAttendee_Click" />
            </div>
            <hr />
            <asp:Panel ID="panelInfo" runat="server">
                <strong><span class="auto-style21">Hakkında </span></strong>
                <br />
                <asp:Label ID="lblInfo" runat="server" Text="Topluluğun hakkında yazısı" CssClass="auto-style19"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="panelAttendee" runat="server" Visible="False">
                <strong><span class="auto-style21">Katılımcılar </span></strong>
                <div style="margin: 50px">
                    <asp:GridView ID="gridAttende" runat="server" Width="460px"></asp:GridView>
                </div>
            </asp:Panel>
        </div>
        <div class="commManager">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style20">
                        <strong>Yönetici<strong>Yönetici</strong>
                            <hr /></td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Image ID="imaManager" runat="server" Height="150px" Width="150px" CssClass="manager-photo" ImageUrl="~/Assets/Media/42-photo11.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="lblManager" runat="server" CssClass="auto-style19" Text="Sadi Enis Güçlüer"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
