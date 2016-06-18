<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="confirm.aspx.cs" Inherits="WCS_eCommerce.confirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .message {
            text-align: center;
        }

        .orderDetails {
            font-weight: bold;
        }

        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="cph2" runat="server">
    <div class="message">
        Thank you for your order!<br />
        A sales representative will call you to confirm your order and process the payment in the next business day.
    </div>
    <div class="orderDetails">
        <br />
        <table class="auto-style1">
            <tr>
                <td>Total Due:</td>
                <td>
                    <asp:Label ID="totalDue" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Payment Type:</td>
                <td>
                    <asp:Label ID="paymentType" runat="server"></asp:Label>
                </td>
            </tr>
            <tr id="deposit" runat="server">
                <td>Deposit:</td>
                <td>
                    <asp:Label ID="depositAmt" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top">Address:</td>
                <td>
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
                        <EditItemTemplate>
                            address1:
                            <asp:TextBox ID="address1TextBox" runat="server" Text='<%# Bind("address1") %>' />
                            <br />
                            address2:
                            <asp:TextBox ID="address2TextBox" runat="server" Text='<%# Bind("address2") %>' />
                            <br />
                            city:
                            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            state:
                            <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                            <br />
                            zip:
                            <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            address1:
                            <asp:TextBox ID="address1TextBox" runat="server" Text='<%# Bind("address1") %>' />
                            <br />
                            address2:
                            <asp:TextBox ID="address2TextBox" runat="server" Text='<%# Bind("address2") %>' />
                            <br />
                            city:
                            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            state:
                            <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                            <br />
                            zip:
                            <asp:TextBox ID="zipTextBox" runat="server" Text='<%# Bind("zip") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Address 1:
                            <asp:Label ID="address1Label" runat="server" Text='<%# Bind("address1") %>' />
                            <br />
                            Address 2:
                            <asp:Label ID="address2Label" runat="server" Text='<%# Bind("address2") %>' />
                            <br />
                            City:
                            <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            State:
                            <asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' />
                            <br />
                            Zip:
                            <asp:Label ID="zipLabel" runat="server" Text='<%# Bind("zip") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\WCS.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [address1], [address2], [city], [state], [zip] FROM [customerInfo] WHERE ([customerID] = ?)">
                        <SelectParameters>
                            <asp:SessionParameter Name="customerID" SessionField="customerID" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
