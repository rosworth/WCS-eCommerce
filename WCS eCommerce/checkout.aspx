<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="WCS_eCommerce.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #btnPlace {
            position: relative;
            left: 30em;
            width: 120px;
        }

        .tableFloat {
            float: left;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="cph2" runat="server">
    <div class="tableFloat">
        <asp:Table ID="Table1" runat="server">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell Font-Bold="true" Width="150px">Item</asp:TableHeaderCell>
                <asp:TableHeaderCell Font-Bold="true" Width="150px">Color</asp:TableHeaderCell>
                <asp:TableHeaderCell Font-Bold="true" Width="150px">Size</asp:TableHeaderCell>
                <asp:TableHeaderCell Font-Bold="true" Width="150px">Quantity</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow ID="americanDad" Visible="false">
                <asp:TableCell>
                    <asp:Image ID="img_americanDad" runat="server" Height="75" Width="75" ImageUrl="~/images/cartoons/small/american dad.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_americanDad" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_americanDad" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_americanDad" runat="server" TextMode="Number" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="boondocks" Visible="false">
                <asp:TableCell>
                    <asp:Image ID="img_boondocks" runat="server" Height="75" Width="75" ImageUrl="~/images/cartoons/small/boondocks.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_boondocks" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_boondocks" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_boondocks" runat="server" TextMode="Number" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="familyGuy" Visible="false">
                <asp:TableCell>
                    <asp:Image ID="img_familyGuy" runat="server" Height="75" Width="75" ImageUrl="~/images/cartoons/small/family guy.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_familyGuy" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_familyGuy" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_familyGuy" runat="server" TextMode="Number" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="southPark" Visible="false">
                <asp:TableCell>
                    <asp:Image ID="img_southPark" runat="server" Height="75" Width="75" ImageUrl="~/images/cartoons/small/south park.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_southPark" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_southPark" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_southPark" runat="server" TextMode="Number" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <div id="btnPlace">
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate Total" OnClick="btnCalculate_Click"  Width="135px"/>
            <asp:Button ID="btnOrder" runat="server" Text="Place Order" OnClick="btnOrder_Click" Width="135px"/>
        </div>
    </div>
    <div>
        Total:
        <br />
        <asp:Label ID="totalDue" runat="server"></asp:Label>
    </div>
</asp:Content>
