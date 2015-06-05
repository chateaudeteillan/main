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

    <div style="position: absolute; top: 0px; height: 769px; width: 290px; left: 0px;" class="s1" id="Cntnr2">
        <div id="Cntnr2bg" class="s1bg"></div>
        <div id="Cntnr2inlineContent" class="s1inlineContent">

            <div style="position: absolute; top: 55px; height: 344px; width: 230px; left: 35px;">
                <a href="/images/contact/Le donjon.jpeg" data-lightbox="Le donjon" data-title="Le donjon">
                    <img src="/images/contact/Le donjon.jpeg" alt="Le donjon" width="230px" height="344px" />
                </a>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="mainContent" runat="Server">

    <div style="position: absolute; top: 0px; height: 769px; width: 600px; left: 340px;" class="s1" id="Cntnrf">
        <div id="Cntnrfbg" class="s1bg"></div>
        <div id="CntnrfinlineContent" class="s1inlineContent">

            <div style="position: absolute; top: 24px; height: 345px; width: 538px; left: 29px;" class="s16" id="map"></div>

            <div style="position: absolute; top: 416px; height: 5px; width: 540px; left: 30px;" class="s2" id="FvGrdLna">
                <div id="FvGrdLnaline" class="s2line"></div>
            </div>

            <div style="height: 268px; position: absolute; top: 464px; width: 540px; left: 29px;" class="s17" id="CntctFrm2">
                <div class="contact">
                    <asp:TextBox ID="txtName" label="Nom" runat="server" CssClass="s17_required s17nameField" Width="538px"/><br />
                    <asp:TextBox ID="txtEmail" label="Email" runat="server" CssClass="s17_required s17emailField" Width="538px"/><br />
                    <asp:TextBox ID="txtSubject" label="Subject" runat="server" CssClass="s17subjectField" Width="538px"/><br />
                    <asp:TextBox ID="txtMessage" label="Message" runat="server" CssClass="s17messageField" Width="538px" Height="175px"></asp:TextBox><br />
                    <br />
                    <asp:Button ID="btnSubmit" Text="Envoyer" OnClick="btnSubmit_OnClick" runat="server" CssClass="s17submit" />
                    <asp:Label ID="lblConfirmation" Text="Votre message a été envoyé avec succès" runat="server" CssClass="s17submit" />
                </div>

            </div>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Footer" ContentPlaceHolderID="footerContent" runat="server">

    <div style="position: absolute; top: 1089px; height: 154px; width: 980px; left: 340px; bottom: auto;" class="s0" id="SITE_FOOTER">
        <div id="SITE_FOOTERscreenWidthBackground" class="s0screenWidthBackground" style="width: 1579px; left: -300px;"></div>
        <div id="SITE_FOOTERcenteredContent" class="s0centeredContent">
            <div id="SITE_FOOTERbg" class="s0bg"></div>
            <div id="SITE_FOOTERinlineContent" class="s0inlineContent">
                <div style="position: absolute; top: 0px; height: 154px; width: 290px; left: 0px;" class="s1" id="Cntnr3">
                    <div id="Cntnr3bg" class="s1bg"></div>
                    <div id="Cntnr3inlineContent" class="s1inlineContent">
                        <div style="position: absolute; top: 0px; height: 5px; width: 230px; left: 35px;" class="s2" id="FvGrdLn3">
                            <div id="FvGrdLn3line" class="s2line"></div>
                        </div>
                        <div style="position: absolute; top: 27px; width: 170px; left: 60px;" class="s3" id="WRchTxtb">
                            <p class="alignLeft      font_8" style="line-height: 1.4em; text-align: center;">
                                Le Grand Teillan<br />
                                30470 Aimargues<br />
                                Tél&nbsp;:&nbsp;06 80 10 08 07<br />
                                chateaudeteillan@gmail.com
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
