<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="CartoonsPage.aspx.cs" Inherits="WCS_eCommerce.Catalog_pages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="JS%20Files/jquery.min.js" type="text/javascript"></script>
    <script src="JS%20Files/jquery-ui.min.js" type="text/javascript"></script>
    <script src="JS%20Files/jquery.elevatezoom.min.js" type="text/javascript"></script>
    <script src="JS%20Files/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="JS%20Files/prism.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("[id*=DataList1] img").elevateZoom({
                cursor: 'pointer',
                zoomWindowPosition: 1
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph2" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" CellPadding="4">
        <ItemTemplate>
            <table border="1px" cellpadding="1px" cellspacing="1px" width="100px" height="100px">
                <tr>
                    <td style="width: 100px; height: 100px">
                        <img src='<%# ResolveUrl(Eval("ImageUrl").ToString()) %>' alt=""
                            data-zoom-image='<%# ResolveUrl(Eval("ZoomImageUrl").ToString()) %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
