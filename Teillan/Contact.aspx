<%@ Page Language="C#" MasterPageFile="~/layout/Site.master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Teillan.Contact" Title="Château de Teillan - Contact" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>
    <script type="text/javascript">
        function initialize() {
            var mapCanvas = document.getElementById("map");

            // create a map centered around our preferred location

            var position = new google.maps.LatLng(43.659990259178, 4.190907632402059);

            var mapOptions = {
                center: position,
                zoom: 15,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
            var map = new google.maps.Map(mapCanvas, mapOptions);

            // add a marker on the location

            var marker = new google.maps.Marker({
                position: position,
                map: map,
                title: "Visites historiques - Gîtes - Mariages\nChâteau de Teillan - 30470 Aimargues"
            });

            // add a tooltip

            var infoWindow = new google.maps.InfoWindow();
            infoWindow.setOptions({
                position: position,
                content:
                    "<div style='color: black;'>" +
                        "Visites historiques - Gîtes - Mariages<br />" +
                        "Château de Teillan - 30470 Aimargues" +
                    "</div>"
            });
            infoWindow.open(map);
        }

        google.maps.event.addDomListener(window, "load", initialize);
    </script>
</asp:Content>
<asp:Content ID="Side" ContentPlaceHolderID="sideContent" runat="Server">
    <div>
        <a href="/images/contact/Le donjon.jpeg" data-lightbox="Le donjon" data-title="Le donjon">
            <img src="/images/contact/Le donjon.jpeg" alt="Le donjon" />
        </a>
    </div>
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="mainContent" runat="Server">
    
    <div id="map" style="height: 480px; width: 800px"></div>
    
    <div class="contact">
        <asp:TextBox ID="txtName" label="Nom" runat="server" Width="800px">Votre nom</asp:TextBox><br />
        <asp:TextBox ID="txtEmail" label="Email" runat="server" Width="800px">Votre adresse de messagerie</asp:TextBox><br />
        <asp:TextBox ID="txtSubject" label="Email" runat="server" Width="800px">Sujet</asp:TextBox><br />
        <asp:TextBox ID="txtMessage" label="Message" runat="server" Height="350px" Width="800px"></asp:TextBox><br />
        <br/>
        <asp:Button id="btnSubmit" text="Envoyer" OnClick="btnSubmit_OnClick" runat="server" Height="39px" Width="180px" />
    </div>

</asp:Content>
