<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="ClassicCars.aspx.cs" Inherits="WCS_eCommerce.ClassicCars" %>

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
            <a href="#" data-image="images/classicCars/small/classics%20get%20better%20with%20age.png" data-zoom-image="images/classicCars/large/classics%20get%20better%20with%20age.png">
                <img id="img_01" src="images/classicCars/small/classics%20get%20better%20with%20age.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
        <div>
            <a href="#" data-image="images/classicCars/small/cobra.png" data-zoom-image="images/classicCars/large/cobra.png">
                <img id="img_02" src="images/classicCars/small/cobra.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
        <div>
            <a href="#" data-image="images/classicCars/small/Deuce.png" data-zoom-image="images/classicCars/large/Deuce.png">
                <img id="img_03" src="images/classicCars/small/Deuce.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
        <div>
            <a href="#" data-image="images/classicCars/small/im%20not%20old%20im%20classic.png" data-zoom-image="images/classicCars/large/im%20not%20old%20im%20classic.png">
                <img id="img_04" src="images/classicCars/small/im%20not%20old%20im%20classic.png" style="height: 75px; width: 75px;" />
            </a>
        </div>
    </div>
    <img id="zoom_03" src="images/classicCars/small/classics%20get%20better%20with%20age.png" data-zoom-image="images/classicCars/large/classics%20get%20better%20with%20age.png" />
    <div class="clear">
        <table class="widthTable">
            <tr>
                <td class="boldFont">Classics</td>
                <td class="boldFont">Cobra</td>
                <td class="boldFont">Deuce</td>
                <td class="boldFont">Not Old</td>
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
                <td>
                    <asp:DropDownList ID="carColor1" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="carColor2" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="carColor3" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="carColor4" runat="server" DataSourceID="shirtColor" DataTextField="Color" DataValueField="Color">
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
                <td>
                    <asp:DropDownList ID="carSize1" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="carSize2" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="carSize3" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="carSize4" runat="server" DataSourceID="shirtSize" DataTextField="size" DataValueField="size">
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
