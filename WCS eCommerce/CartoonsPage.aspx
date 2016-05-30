<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="CartoonsPage.aspx.cs" Inherits="WCS_eCommerce.Catalog_pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <p>
        <asp:Label ID="lblCartoons" runat="server" Text="Cartoons"></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph2" runat="server">
    <form id="form1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" CellPadding="4">
    <ItemTemplate>
        <table border="10px" cellpadding="10px" cellspacing="50px" width="200px" height="200px">
            <tr>
                <td align="center">
                    <img src='<%# ResolveUrl(Eval("ImageUrl").ToString()) %>' alt=""
                    data-zoom-image='<%# ResolveUrl(Eval("ZoomImageUrl").ToString()) %>' />
                </td>
            </tr>
        </table>
    </ItemTemplate>
    </asp:DataList>
    <script type="text/javascript" src="~/images/cartoons/american%20dad.png"></script>
    <script type="text/javascript" src="~/images/cartoons/boondocks.png"></script>
    <script type="text/javascript">
    $(function () {
        $("[id*=DataList1] img").elevateZoom({
            cursor: 'pointer',
            imageCrossfade: true,
            loadingIcon: 'loading.gif'
        });
    });
    </script>
        </form>
</asp:Content>
