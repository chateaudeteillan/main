<%@ Page Language="C#" MasterPageFile="~/layout/Site.master" AutoEventWireup="true" CodeBehind="Visiter.aspx.cs" Inherits="Teillan.Visit" Title="Château de Teillan - Visiter" %>
<asp:Content ID="Head" ContentPlaceHolderID="head" Runat="Server"/>
<asp:Content ID="Side" ContentPlaceHolderID="sideContent" Runat="Server">
    <div>
        <h2 class="font_2" style="text-align: center; font-size: 20px">Venez découvrir Teillan un site historique de charme, situé aux carrefours des siècles, des religions et des routes du sel.</h2>
        <h2 class="font_2" style="text-align: center; font-size: 20px">Le Château de Teillan, riche des reflets de la quintessence de son histoire : des Romains au Moyen Age, de la Renaissance, à nos jours.</h2>
    </div>
</asp:Content>
<asp:Content ID="Main" ContentPlaceHolderID="mainContent" Runat="Server">

    <div>
        <p>Le Château de Teillan est situé à 2,5 km au sud-ouest du village d’Aimargues.</p>
 
        <h2>Son architecture :</h2>

        <p>
        Cet ancien castrum romain portait le nom de "Villa Teillanis" dont les plus anciens documents retrouvés à ce jour datent de 814 et de 960.
        L’abbaye de Psalmody, située entre Teillan et Aigues-Mortes, l’a acquis au XIIème siècle et a édifié de belles salles voûtées,
        dont la Salle Capitulaire qui a été réhabillitée y a quelques années.
        En 1605, Teillan a été racheté par Philippe de Bornier qui l’a doté d’une Porte Renaissance, d’un Pigeonnier de 1500 nids et d'un Donjon.
        Richelieu y a séjourné lors de la signature de la Paix d'Alais en 1629, au coté de Louis XIII.</p>
    </div>

    <div>
        <a href="/images/Le pigeonnier.jpeg" data-lightbox="Visit" data-title="Le pigeonnier">
        <img src="/images/Le pigeonnier.jpeg" alt="Le pigeonnier" />
        </a>
    </div>

    <div>
        <a href="/images/Le donjon.jpeg" data-lightbox="Visit" data-title="Le donjon">
        <img src="/images/Le donjon.jpeg" alt="Le donjon" />
        </a>
        <a href="/images/La fontaine de Cérès.jpeg" data-lightbox="Visit" data-title="La fontaine de Cérès">
        <img src="/images/La fontaine de Cérès.jpeg" alt="La fontaine de Cérès" />
        </a>
        <a href="/images/La porte italienne.jpeg" data-lightbox="Visit" data-title="La porte italienne">
        <img src="/images/La porte italienne.jpeg" alt="La porte italienne" />
        </a>
        <a href="/images/La cour.jpeg" data-lightbox="Visit" data-title="La cour">
        <img src="/images/La cour.jpeg" alt="La cour" />
        </a>
    </div>
    
    <div>
        <h2>Son Parc :</h2>

        <p>
        En 1635, le propriétaire a constitué, sous décret royal, une collection de bornes milliaires de la via Domitia, autels votifs et stèles romaines.
        Certains arbres du parc ont été plantés avant 1800 dont un magnifique cyprés de près de 400 ans et quelques essences remarquables : Noyers d'Amériques, Orangers des Osages, Cèdre du Liban, Gingkobiloba...
        Le parc est aussi un refuge pour plusieurs espèces d'oiseaux comme le rollier d'Europe.
        Située au milieu du parc, la Noria qui est l'une des plus importante d'Europe du Sud, fournissait de l'eau pour l'irrigation des jardins.
        Sous cette Noria on découvre un Mikvé d’architecture Maimonide du XIIème siècle.
        Une Orangerie d'époque Directoire, agrémente les jardins, autrefois irrigués.
        </p>

    </div>

    <div>
        <a href="/images/La Noria.jpeg" data-lightbox="Visit" data-title="La Noria">
        <img src="/images/La Noria.jpeg" alt="La Noria" />
        </a>
    </div>

</asp:Content>