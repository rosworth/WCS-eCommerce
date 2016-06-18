<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="CartoonsPage.aspx.cs" Inherits="WCS_eCommerce.Catalog_pages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="new%20JS/jquery.elevateZoom-3.0.8.min.js" type="text/javascript"></script>
    <script src="new%20JS/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="new%20JS/jquery.elevatezoom.js" type="text/javascript"></script>
    <style>
        /*set a border on the images to prevent shifting*/
        #gallery_01 img {
            border: 2px solid white;
        }

        /*Change the colour*/
        .active img {
            border: 2px solid #333 !important;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph2" runat="server">
    <div id="gallery_01" style="display: block; float: left; margin-right: 20px;">
        <div>
            <a href="#" data-image="images/cartoons/small/american dad.png" data-zoom-image="images/cartoons/large/american dad.png">
                <img id="img_01" src="images/cartoons/small/american dad.png" style="height: 75px; width: 75px;" />&nbsp;
            </a>
        </div>
        <div>
            <a href="#" data-image="images/cartoons/small/boondocks.png" data-zoom-image="images/cartoons/large/boondocks.png">
                <img id="img_02" src="images/cartoons/small/boondocks.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
        <div>
            <a href="#" data-image="images/cartoons/small/family guy.png" data-zoom-image="images/cartoons/large/family guy.png">
                <img id="img_03" src="images/cartoons/small/family guy.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
        <div>
            <a href="#" data-image="images/cartoons/small/south park.png" data-zoom-image="images/cartoons/large/south park.png">
                <img id="img_04" src="images/cartoons/small/south park.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
    </div>
    <a href="#" data-image="images/cartoons/small/american dad.png" data-zoom-image="images/cartoons/large/american dad.png">
        <img id="zoom_03" src="images/cartoons/small/american dad.png" data-zoom-image="images/cartoons/large/american dad.png" /></a>
    <div class="clear">
        <table class="widthTable">
            <tr>
                <td class="boldFont">American Dad</td>
                <td class="boldFont">Boondocks</td>
                <td class="boldFont">Family Guy</td>
                <td class="boldFont">South Park</td>
                <td>Prices:</td>
            </tr>
            <tr>
                <td>Color</td>
                <td>Color</td>
                <td>Color</td>
                <td>Color</td>
                <td>
                    <asp:Label ID="Label5" runat="server" BorderStyle="Double" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="XS - XL: $10"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:DropDownList ID="cartoonColor1" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="cartoonColor2" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="cartoonColor3" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="cartoonColor4" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" BorderStyle="Double" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="2XL: $12"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Size</td>
                <td>Size</td>
                <td>Size</td>
                <td>Size</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:DropDownList ID="cartoonSize1" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="cartoonSize2" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="cartoonSize3" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="cartoonSize4" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:Button ID="cartAdd" runat="server" Text="Add to Cart" OnClick="cartAdd_Click" />
        <asp:SqlDataSource ID="shirtColor" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\WCS.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [Color] FROM [shirtColor]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="shirtSize" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\WCS.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [size] FROM [shirtSizes]"></asp:SqlDataSource>
    </div>
    <script type="text/javascript">
        //initiate the plugin and pass the id of the div containing gallery images
        $("#zoom_03").elevateZoom({
            gallery: 'gallery_01', cursor: 'crosshair', galleryActiveClass: 'active', imageCrossfade: true, loadingIcon: 'http://www.elevateweb.co.uk/spinner.gif', zoomWindowPosition: 3, zoomWindowOffetx: 20, zoomWindowOffety: 225
        });

        //pass the images to Fancybox
        $("#zoom_03").bind("click", function (e) {
            var ez = $('#zoom_03').data('elevateZoom');
            $.fancybox(ez.getGalleryList());
            return false;
        });
    </script>

</asp:Content>
