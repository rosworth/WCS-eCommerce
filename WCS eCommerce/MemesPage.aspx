<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="MemesPage.aspx.cs" Inherits="WCS_eCommerce.MemesPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/style.css" type="text/css" media="all" rel="stylesheet" />
    <link href="CSS/jquery-ui.css" rel="stylesheet" type="text/css" />
    <link href="CSS/default.css" rel="stylesheet" />
    <link href="CSS/jquery.fancybox.css" rel="stylesheet" />
    <link href="CSS/sharebar.css" rel="stylesheet" id='d4p-bbtools-css-css' type='text/css' media='all' />
    <script src="JS%20Files/jquery.min.js" type="text/javascript"></script>
    <script src="JS%20Files/jquery-ui.min.js" type="text/javascript"></script>
    <script src="JS%20Files/jquery.elevatezoom.min.js" type="text/javascript"></script>
    <script src="JS%20Files/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="JS%20Files/prism.js" type="text/javascript"></script>
    <link href="CSS/prism.css" rel="stylesheet" type="text/javascript" />
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
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" RepeatColumns="2">
        <ItemTemplate>
            <table border="10px" cellpadding="10px" cellspacing="50px" height="200px" width="200px">
                <tr>
                    <td align="center">
                        <img src='<%# ResolveUrl(Eval("ImageUrl").ToString()) %>' alt=""
                            data-zoom-image='<%# ResolveUrl(Eval("ZoomImageUrl").ToString()) %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
