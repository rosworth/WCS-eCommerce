<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="catalog.aspx.cs" Inherits="WCS_eCommerce.catalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .centerText {
            text-align: center;
            width: 18em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content" ContentPlaceHolderID="cph2" runat="server">
    <table>
        <tr>
            <td class="centerText">
                <asp:ImageButton ID="imgbtnCartoons" runat="server" ImageUrl="~/images/cartoons/small/boondocks.png" PostBackUrl="~/CartoonsPage.aspx" />
                <br />
            <asp:LinkButton ID="lnkbtnCartoons" runat="server" PostBackUrl="~/CartoonsPage.aspx">Cartoons</asp:LinkButton>
            </td>
            <td class="centerText">
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/city/small/houston.png" PostBackUrl="~/citypage.aspx" />
                <br />
            <asp:LinkButton ID="lnkbtnCity" runat="server" PostBackUrl="~/citypage.aspx">Cities</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="centerText">
                <asp:ImageButton ID="imgbtnClassic" runat="server" ImageUrl="~/images/classicCars/small/classics get better with age.png" PostBackUrl="~/ClassicCars.aspx" />
                <br />
            <asp:LinkButton ID="lnkbtnCCars" runat="server" PostBackUrl="~/ClassicCars.aspx">Classic Cars</asp:LinkButton>
            </td>
            <td class="centerText">
                <asp:ImageButton ID="imgbtnMeme" runat="server" ImageUrl="~/images/meme/small/confusion.png" PostBackUrl="~/MemesPage.aspx" />
                <br />
            <asp:LinkButton ID="lnkbtnMemes" runat="server" PostBackUrl="~/MemesPage.aspx">Memes</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="centerText">
                <asp:ImageButton ID="ImageButton6" runat="server" Height="200px" ImageUrl="~/images/video games/small/division.png" Width="200px" PostBackUrl="~/VideoGamesPage.aspx" />
                <br />
            <asp:LinkButton ID="lnkbtnVGames" runat="server" PostBackUrl="~/VideoGamesPage.aspx">Video Games</asp:LinkButton>
            </td>
            <td class="centerText">
                <asp:LinkButton ID="lnkbtnCustom" runat="server" PostBackUrl="~/shirtMaker.aspx">MAKE A CUSTOM SHIRT HERE!</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
