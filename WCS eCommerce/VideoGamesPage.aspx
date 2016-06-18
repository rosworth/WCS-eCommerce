<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="VideoGamesPage.aspx.cs" Inherits="WCS_eCommerce.VideoGamesPage" %>

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
            <a href="#" data-image="images/video games/small/assassins creed.png" data-zoom-image="images/video games/large/assassins creed.png">
                <img id="img_01" src="images/video games/small/assassins creed.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
        <div>
            <a href="#" data-image="images/video games/small/battlefield.png" data-zoom-image="images/video games/large/battlefield.png">
                <img id="img_02" src="images/video games/small/battlefield.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
        <div>
            <a href="#" data-image="images/video games/small/cod.png" data-zoom-image="images/video games/large/cod.png">
                <img id="img_03" src="images/video games/small/cod.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
        <div>
            <a href="#" data-image="images/video games/small/division.png" data-zoom-image="images/video games/large/division.png">
                <img id="img_04" src="images/video games/small/division.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
        <div>
            <a href="#" data-image="images/video games/small/resident-evil.png" data-zoom-image="images/video games/large/resident-evil.png">
                <img id="img_05" src="images/video games/small/resident-evil.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
    </div>
    <img id="zoom_03" src="images/video games/small/assassins creed.png" data-zoom-image="images/video games/large/assassins creed.png" />
    <div class="clear">
        <table class="widthTable">
            <tr>
                <td class="boldFont">Assassin&#39;s Creed</td>
                <td class="boldFont">Battlefield</td>
                <td class="boldFont">Call of Duty</td>
                <td class="boldFont">Division</td>
                <td class="boldFont">Resident Evil</td>
                <td>Prices:</td>
            </tr>
            <tr>
                <td>Color</td>
                <td>Color</td>
                <td>Color</td>
                <td>Color</td>
                <td>Color</td>
                <td>
                    <asp:Label ID="Label5" runat="server" BorderStyle="Double" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="XS - XL: $10"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="gamesColor1" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="gamesColor2" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="gamesColor3" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="gamesColor4" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="gamesColor5" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
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
                <td>Size</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="gamesSize1" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="gamesSize2" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="gamesSize3" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="gamesSize4" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="gamesSize5" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
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
