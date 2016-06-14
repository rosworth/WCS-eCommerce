<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="VideoGamesPage.aspx.cs" Inherits="WCS_eCommerce.VideoGamesPage" %>

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
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" CellPadding="4">
        <ItemTemplate>
            <table border="1px" cellpadding="1px" cellspacing="1px" width="100px" height="100px">
                <tr>
                    <td style="width: 200px; height: 100px">
                        <img src='<%# ResolveUrl(Eval("ImageUrl").ToString()) %>' alt=""
                            data-zoom-image='<%# ResolveUrl(Eval("ZoomImageUrl").ToString()) %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div>

        <table class="ui-accordion">
            <tr>
                <td class="auto-style3" style="width: 200px">
                    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
                <td class="auto-style3" style="width: 200px">
                    <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
                <td class="auto-style3" style="width: 200px">
                    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
                <td class="auto-style3" style="width: 200px">
                    <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 200px">
                    <asp:Label ID="lblQuantity1" runat="server" ForeColor="White" Text="Quantity"></asp:Label>
                </td>
                <td class="auto-style3" style="width: 200px">
                    <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
                <td class="auto-style3" style="width: 200px">
                    <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
                <td class="auto-style3" style="width: 200px">
                    <asp:Label ID="Label8" runat="server" ForeColor="White" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
                <td class="auto-style3" style="width: 200px">&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
