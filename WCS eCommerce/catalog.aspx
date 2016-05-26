<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="catalog.aspx.cs" Inherits="WCS_eCommerce.catalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 72%;
        }
        .auto-style2 {
            width: 262px;
        }
        .auto-style3 {
            width: 379px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <p>
        Catalog
    </p>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph2" runat="server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:ImageButton ID="imgbtnCartoons" runat="server" ImageUrl="~/images/cartoons/boondocks.png" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:ImageButton ID="imgbtnCity" runat="server" ImageUrl="~/images/city/houston.png" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server">LinkButton</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:ImageButton ID="imgbtnClassicCars" runat="server" ImageUrl="~/images/Classic Cars/im not old im classic.png" />
                <br />
                <asp:LinkButton ID="LinkButton3" runat="server">LinkButton</asp:LinkButton>
            </td>
            <td class="auto-style3">
                <asp:ImageButton ID="imgbtnMeme" runat="server" ImageUrl="~/images/meme/challenge accepted.png" />
                <br />
                <asp:LinkButton ID="LinkButton4" runat="server">LinkButton</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:ImageButton ID="imgbtnVideoGames" runat="server" ImageUrl="~/images/video games/resident-evil.png" />
                <br />
                <asp:LinkButton ID="LinkButton5" runat="server">LinkButton</asp:LinkButton>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>

</asp:Content>
