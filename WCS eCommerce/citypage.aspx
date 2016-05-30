<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="citypage.aspx.cs" Inherits="WCS_eCommerce.citypage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <asp:Label ID="lblCity" runat="server" Text="Cities"></asp:Label>
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
     <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://cdn.rawgit.com/elevateweb/elevatezoom/master/jquery.elevateZoom-3.0.8.min.js"></script>
    <script type="text/javascript">
    $(function () {
        $("[id*=DataList1]").elevateZoom({
            cursor: 'pointer',
            imageCrossfade: true,
            loadingIcon: 'loading.gif'
        });
    });
    </script>
</asp:Content>
