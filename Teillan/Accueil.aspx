<%@ Page Language="C#" MasterPageFile="~/layout/Site.master" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="Teillan.Home" Title="Château de Teillan" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="Server" />
<asp:Content ID="Side" ContentPlaceHolderID="sideContent" runat="Server">

    <h2>
        Teillan vous accueille :<br />
        une visite, un séjour<br />
        ou une fête !
    </h2>

    <p class="font_8">&nbsp;</p>
    <p class="font_8" style="text-align: justify;">&nbsp;</p>
    <p class="font_8" style="font-size: 14px;">&nbsp;</p>

    <div id="WPhtd-7arimg">
        <img src="/images/Le château de Teillan.jpeg" alt="Le Château de Teillan" style="width: 226px; height: 207px; -o-object-fit: cover; object-fit: cover;"
            class="s5imgimage" />
    </div>

</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="mainContent" runat="Server">

    <div style="position: absolute; top: 23px; width: 566px; left: 29px;" class="s3" id="WRchTxtx-s5i">
        <h2 class="font_2">Un site d'exception,<br />
            Un Château classé monument historique,<br />
            En petite Camargue,<br />
            Entre Nîmes et Montpellier,<br />
            Entre Cévennes et Méditerranée.
        </h2>

        <h2 class="font_2">Lieu discret, inattendu, magique, étonnant témoin de l'histoire de cette région...</h2>

        <p class="font_8">&nbsp;</p>
    </div>

    <div style="position: absolute; top: 262px; height: 421px; width: 563px; left: 28px;" data-exact-height="420.8910162002946" data-content-padding-horizontal="2" data-content-padding-vertical="2" title="Teillan vue du parc" class="s12" id="WPhtc-oqv">
        <a style="width: 561px; height: 419px; cursor: pointer;" href="/images/Le château vu du parc.jpeg" data-lightbox="Le Château vu du parc" data-title="Le Château vu du parc" target="_self" id="WPhtc-oqvlink" class="s12link">
            <img style="width: 561px; height: 419px; -o-object-fit: contain; object-fit: contain;"
                src="/images/Le château vu du parc.jpeg" alt="Le Château vu du parc" class="s12imgimage" />
        </a>
    </div>

</asp:Content>
