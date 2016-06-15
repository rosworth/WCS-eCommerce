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
        .auto-style1 {
            width: 100px;
        }
        .auto-style2 {
            width: 100px;
            height: 27px;
        }
        .auto-style3 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph2" runat="server">
    <div id="gallery_01" style="display: block; float: left; margin-right: 20px;">
        <div>
            <a href="#" data-image="images/cartoons/small/american%20dad.png" data-zoom-image="images/cartoons/large/american%20dad.png">
                <img id="img_01" src="images/cartoons/small/american%20dad.png" style="height: 75px; width: 75px;" />&nbsp;
            </a>
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Selection" />
       </div>
        <div>
            <a href="#" data-image="images/cartoons/small/boondocks.png" data-zoom-image="images/cartoons/large/boondocks.png">
                <img id="img_02" src="images/cartoons/small/boondocks.png" style="height: 75px; width: 75px;" />
            </a>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Selection" />
        </div>
        <div>
            <a href="#" data-image="images/cartoons/small/family%20guy.png" data-zoom-image="images/cartoons/large/family%20guy.png">
                <img id="img_03" src="images/cartoons/small/family%20guy.png" style="height: 75px; width: 75px;" />
            </a>
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Selection" />
        </div>
        <div>
            <a href="#" data-image="images/cartoons/small/south%20park.png" data-zoom-image="images/cartoons/large/south%20park.png">
                <img id="img_04" src="images/cartoons/small/south%20park.png" style="height: 75px; width: 75px;" />
            </a>
            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Selection" />
        </div>
    </div>
            <a href="#" data-image="images/cartoons/small/american%20dad.png" data-zoom-image="images/cartoons/large/american%20dad.png">
                <img id="zoom_03" src="images/cartoons/small/american%20dad.png" data-zoom-image="images/cartoons/large/american%20dad.png" /></a><div>

        <table class="ui-accordion">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="American Dad"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Boondocks" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Family Guy" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="South Park" Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" BorderStyle="Double" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="XS,S,M,L,XL: $10"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Color" Font-Bold="True" Font-Italic="True"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Color" Font-Bold="True" Font-Italic="True" Font-Overline="False"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Color" Font-Bold="True" Font-Italic="True"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label9" runat="server" Text="Color" Font-Bold="True" Font-Italic="True"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" BorderStyle="Double" Font-Bold="True" Font-Italic="True" ForeColor="Red" Text="2XL: $12" Width="121px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList5" runat="server" >
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                        <asp:ListItem>Black</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                        <asp:ListItem>Black</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                        <asp:ListItem>Black</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                        <asp:ListItem>Black</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label11" runat="server" Text="Qty:"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label12" runat="server" Text="Qty:"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label13" runat="server" Text="Qty:"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label14" runat="server" Text="Qty:"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList6" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList7" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem Value="10"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList8" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label15" runat="server" Text="Size:"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label16" runat="server" Text="Size:"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label17" runat="server" Text="Size:"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label18" runat="server" Text="Size:"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList9" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList10" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList11" runat="server">
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownList12" runat="server">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button5" runat="server" Text="Button" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server"  Text="Button" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="Button3" runat="server"  Text="Button" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Button" />
                </td>
            </tr>
        </table>

    </div>
    &nbsp;<script type="text/javascript">
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
    </script>&nbsp;
    
</asp:Content>
