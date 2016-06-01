<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="catalog.aspx.cs" Inherits="WCS_eCommerce.catalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 72%;
        }
        .auto-style3 {
            width: 379px;
        }
    .auto-style4 {
        width: 100%;
    }
    .auto-style5 {
        width: 390px;
    }
    .auto-style6 {
        width: 390px;
        height: 210px;
    }
    .auto-style7 {
        height: 210px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <p>
        Catalog
    </p>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph2" runat="server">

    <table class="auto-style4">
    <tr>
        <td class="auto-style5">
            <asp:ImageButton ID="imgbtnCartoons" runat="server" ImageUrl="~/images/cartoons/boondocks.png" PostBackUrl="~/CartoonsPage.aspx" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lnkbtnCartoons" runat="server" PostBackUrl="~/CartoonsPage.aspx">Cartoons</asp:LinkButton>
        </td>
        <td>
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/city/houston.png" />
            <asp:LinkButton ID="LinkButton2" runat="server">LinkButton</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/Classic Cars/classics get better with age.png" />
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server">LinkButton</asp:LinkButton>
        </td>
        <td>
            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/meme/confusion.png" />
            <br />
            <asp:LinkButton ID="LinkButton4" runat="server">LinkButton</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:ImageButton ID="ImageButton6" runat="server" Height="200px" ImageUrl="~/images/video games/division.png" Width="200px" />
            <br />
            <asp:LinkButton ID="LinkButton5" runat="server">LinkButton</asp:LinkButton>
        </td>
        <td class="auto-style7">
            <asp:ImageButton ID="ImageButton7" runat="server" />
            <asp:LinkButton ID="LinkButton6" runat="server">LinkButton</asp:LinkButton>
        </td>
    </tr>
</table>

</asp:Content>
