<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="WCS_eCommerce.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .tableFloat {
            width: 675px;
        }

        .totalDiv {
            width: 100px;
            position: absolute;
            left: 675px;
            top: 20px;
        }

        .auto-style1 {
            width: 675px;
            clear: both;
        }

        .controls {
            border-collapse: separate;
            border-spacing: 5px;
            width: 675px;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="cph2" runat="server">
    <div class="tableFloat">
        <asp:Table ID="Table1" runat="server" Width="675px">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell HorizontalAlign="Center" Font-Bold="true" Width="25%">Item</asp:TableHeaderCell>
                <asp:TableHeaderCell HorizontalAlign="Center" Font-Bold="true" Width="25%">Color</asp:TableHeaderCell>
                <asp:TableHeaderCell HorizontalAlign="Center" Font-Bold="true" Width="25%">Size</asp:TableHeaderCell>
                <asp:TableHeaderCell HorizontalAlign="Center" Font-Bold="true" Width="25%">Quantity</asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow ID="americanDad" Visible="false" VerticalAlign="Middle" Height="75px">
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
            <asp:TableRow ID="boondocks" Visible="false" VerticalAlign="Middle">
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
                    <asp:TextBox ID="qty_boondocks" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="familyGuy" Visible="false" VerticalAlign="Middle">
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
                    <asp:TextBox ID="qty_familyGuy" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="southPark" Visible="false" VerticalAlign="Middle">
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
                    <asp:TextBox ID="qty_southPark" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="chicago" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_chicago" runat="server" Height="75" Width="75" ImageUrl="~/images/city/small/chicago.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_chicago" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_chicago" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_chicago" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="houston" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_houston" runat="server" Height="75" Width="75" ImageUrl="~/images/city/small/houston.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_houston" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_houston" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_houston" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="la" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_la" runat="server" Height="75" Width="75" ImageUrl="~/images/city/small/la.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_la" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_la" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_la" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="miami" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_miami" runat="server" Height="75" Width="75" ImageUrl="~/images/city/small/miami.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_miami" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_miami" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_miami" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="ny" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_ny" runat="server" Height="75" Width="75" ImageUrl="~/images/city/small/ny.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_ny" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_ny" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_ny" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="classics" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_classics" runat="server" Height="75" Width="75" ImageUrl="~/images/classicCars/small/classics get better with age.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_classics" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_classics" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_classics" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="cobra" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_cobra" runat="server" Height="75" Width="75" ImageUrl="~/images/classicCars/small/cobra.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_cobra" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_cobra" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_cobra" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="deuce" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_deuce" runat="server" Height="75" Width="75" ImageUrl="~/images/classicCars/small/Deuce.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_deuce" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_deuce" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_deuce" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="notOld" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_notOld" runat="server" Height="75" Width="75" ImageUrl="~/images/classicCars/small/im not old im classic.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_notOld" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_notOld" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_notOld" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="challenge" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_challenge" runat="server" Height="75" Width="75" ImageUrl="~/images/meme/small/challenge accepted.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_challenge" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_challenge" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_challenge" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="confusion" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_confusion" runat="server" Height="75" Width="75" ImageUrl="~/images/meme/small/confusion.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_confusion" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_confusion" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_confusion" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="freeShirt" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_freeShirt" runat="server" Height="75" Width="75" ImageUrl="~/images/meme/small/free-t-shirt.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_freeShirt" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_freeShirt" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_freeShirt" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="harlemShake" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_harlemShake" runat="server" Height="75" Width="75" ImageUrl="~/images/meme/small/harlem shake.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_harlemShake" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_harlemShake" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_harlemShake" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="nike" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_nike" runat="server" Height="75" Width="75" ImageUrl="~/images/meme/small/just do it tomorrow.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_nike" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_nike" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_nike" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="creed" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_creed" runat="server" Height="75" Width="75" ImageUrl="~/images/video games/small/assassins creed.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_creed" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_creed" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_creed" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="battlefield" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_battlefield" runat="server" Height="75" Width="75" ImageUrl="~/images/video games/small/battlefield.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_battlefield" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_battlefield" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_battlefield" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="cod" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_cod" runat="server" Height="75" Width="75" ImageUrl="~/images/video games/small/cod.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_cod" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_cod" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_cod" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="division" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_division" runat="server" Height="75" Width="75" ImageUrl="~/images/video games/small/division.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_division" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_division" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_division" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="residentEvil" Visible="false" VerticalAlign="Middle">
                <asp:TableCell>
                    <asp:Image ID="img_residentEvil" runat="server" Height="75" Width="75" ImageUrl="~/images/video games/small/resident-evil.png" />
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="color_residentEvil" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label ID="size_residentEvil" runat="server"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_residentEvil" runat="server" TextMode="SingleLine" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <%--dummy row-will be invisible if cart is not empty--%>
            <asp:TableRow ID="dummy" VerticalAlign="Middle">
                <asp:TableCell ColumnSpan="3" HorizontalAlign="Center">
                    Your cart is empty
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="qty_dummy" runat="server" TextMode="SingleLine" Width="50" Visible="false"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
    </div>
    <div class="totalDiv">
        Total:
        <br />
        <asp:Label ID="totalDue" runat="server"></asp:Label>
    </div>
    <div class="auto-style1">
        <table class="controls">
            <tr>
                <td style="width: 75%;">
                    <asp:RegularExpressionValidator ID="validator" runat="server" ErrorMessage="Enter a valid number" ValidationExpression="^([1-9]|[1-9]\d|100)$" ValidationGroup="checkNumber" ControlToValidate="qty_dummy"></asp:RegularExpressionValidator>
                </td>
                <td style="width: 75%; text-align: right;">Payment Type</td>
                <td style="text-align: right">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate Total" OnClick="btnCalculate_Click" Width="135px" />
                </td>
            </tr>
            <tr>
                <td style="text-align: right">&nbsp;</td>
                <td style="text-align: right">
                    <asp:DropDownList ID="paymentOption" runat="server">
                        <asp:ListItem Value="Cash">Cash</asp:ListItem>
                        <asp:ListItem>Credit Card</asp:ListItem>
                        <asp:ListItem>Money Order</asp:ListItem>
                        <asp:ListItem>PayPal</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="text-align: right">
                    <asp:Button ID="btnOrder" runat="server" Text="Place Order" OnClick="btnOrder_Click" Width="135px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
