<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="CartoonsPage.aspx.cs" Inherits="WCS_eCommerce.Catalog_pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" type="text/css" media="all" href="http://www.elevateweb.co.uk/wp-content/themes/twentyeleven/style.css" />
    <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/themes/cupertino/jquery-ui.css"/>
	<link rel="stylesheet" href="http://www.elevateweb.co.uk/wp-content/themes/radial/default.css" />
	<link rel="stylesheet" href="http://www.elevateweb.co.uk/wp-content/themes/radial/jquery.fancybox.css" />
    <link rel='stylesheet' id='d4p-bbtools-css-css'  href='http://www.elevateweb.co.uk/wp-content/plugins/sharebar/css/sharebar.css' type='text/css' media='all' />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script> 
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js" type="text/javascript"></script>
    <script src="http://www.elevateweb.co.uk/wp-content/themes/radial/jquery.elevatezoom.min.js" type="text/javascript"></script>
    <script src="http://www.elevateweb.co.uk/wp-content/themes/radial/jquery.fancybox.pack.js" type="text/javascript"></script>
	<script type="text/javascript" src="http://www.elevateweb.co.uk/wp-content/themes/radial/syntax/prism.js"></script>
	<link type="text/css" rel="stylesheet" href="http://www.elevateweb.co.uk/wp-content/themes/radial/syntax/prism.css"/>
    <script type="text/javascript">
    $(function () {
        $("[id*=DataList1] img").elevateZoom({
            cursor: 'pointer',
            //imageCrossfade: true,
            //loadingIcon: 'loading.gif'
            zoomWindowPosition: 1
        }); 
    });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <p>
        <asp:Label ID="lblCartoons" runat="server" Text="Cartoons"></asp:Label>
    </p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph2" runat="server">
    <%--<form id="form1" runat="server">--%>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" CellPadding="4">
    <ItemTemplate>
        <table border="1px" cellpadding="1px" cellspacing="1px" width="100px" height="100px">
            <tr>
                <td style="width:100px; height:100px">
                    <img src='<%# ResolveUrl(Eval("ImageUrl").ToString()) %>' alt=""
                    data-zoom-image='<%# ResolveUrl(Eval("ZoomImageUrl").ToString()) %>' />
                </td>
            </tr>
        </table>
    </ItemTemplate>
    </asp:DataList>
       <%--//</form>--%>
</asp:Content>
