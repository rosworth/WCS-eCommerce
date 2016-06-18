<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="WCS_eCommerce.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #btnPlace {
            position: relative;
            left: 30em;
            width: 135px;
        }

        .tableFloat {
            float: left;
        }

        .totalDiv {
            width: 100px;
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
                    <asp:TextBox ID="qty_boondocks" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_familyGuy" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_southPark" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_chicago" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_houston" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_la" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_miami" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_ny" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_classics" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_cobra" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_deuce" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_notOld" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_challenge" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_confusion" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_freeShirt" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_harlemShake" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_nike" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_creed" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_battlefield" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_cod" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_division" runat="server" TextMode="Number" Width="50"></asp:TextBox>
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
                    <asp:TextBox ID="qty_residentEvil" runat="server" TextMode="Number" Width="50"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <br />
        <div id="btnPlace">
            <asp:Button ID="btnCalculate" runat="server" Text="Calculate Total" OnClick="btnCalculate_Click" Width="135px" />
            <asp:Button ID="btnOrder" runat="server" Text="Place Order" OnClick="btnOrder_Click" Width="135px" />
        </div>
    </div>
    <div class="totalDiv">
        Total:
        <br />
        <asp:Label ID="totalDue" runat="server"></asp:Label>
    </div>
</asp:Content>
