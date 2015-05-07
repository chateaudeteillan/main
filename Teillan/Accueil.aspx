<%@ Page Language="C#" MasterPageFile="~/layout/Site.master" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="Teillan.Home" Title="Château de Teillan" %>
<asp:Content ID="Head" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Side" ContentPlaceHolderID="sideContent" Runat="Server">
    <div>
        <p>Teillan vous accueille : une visite, un séjour ou une fête !</p>
        <a href="/images/Le château de Teillan.jpeg" data-lightbox="Le Château de Teillan" data-title="Le Château de Teillan">
            <img src="/images/Le château de Teillan.jpeg" alt="Le Château de Teillan" />
        </a>
    </div>
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="mainContent" Runat="Server">

    <div>
        <p>
            Un site d'exception,<br />
            Un Château classé monument historique,<br />
            En petite Camargue,<br />
            Entre Nîmes et Montpellier,<br />
            Entre Cévennes et Méditerranée.
        </p>

        <p>Lieu discret, inattendu, magique, étonnant témoin de l'histoire de cette région...</p>
    </div>

    <div>
        <a href="/images/Le château vu du parc.jpeg" data-lightbox="Le Château vu du parc" data-title="Le Château vu du parc">
        <img src="/images/Le château vu du parc.jpeg" alt="Le Château vu du parc" />
        </a>
    </div>

</asp:Content>