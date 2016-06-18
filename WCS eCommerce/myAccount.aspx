<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="myAccount.aspx.cs" Inherits="WCS_eCommerce.myAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="cph2" runat="server">
    Account Info
    <br />
    <asp:FormView ID="FormView1" runat="server" DataSourceID="accountInfo">
        <EditItemTemplate>
            firstName:
            <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
            <br />
            lastName:
            <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
            <br />
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
            firstName:
            <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
            <br />
            lastName:
            <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
            <br />
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
            First Name:
            <asp:Label ID="firstNameLabel" runat="server" Text='<%# Bind("firstName") %>' />
            <br />
            Last Name:
            <asp:Label ID="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' />
            <br />
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
    <br />
    Order History<br />
    <asp:GridView ID="ordersGrid" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="orders" GridLines="Horizontal" ForeColor="Black" Width="550px">
        <Columns>
            <asp:BoundField DataField="dateTime" HeaderText="Date" SortExpression="dateTime" />
            <asp:BoundField DataField="deposit" HeaderText="Deposit" SortExpression="deposit" DataFormatString="{0:c}" />
            <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" DataFormatString="{0:c}" />
            <asp:BoundField DataField="payment" HeaderText="Payment" SortExpression="payment" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="orders" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\WCS.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [dateTime], [deposit], [total], [payment], [status] FROM [order] WHERE ([customerID] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="customerID" SessionField="customerID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="accountInfo" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\WCS.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [firstName], [lastName], [address1], [address2], [city], [state], [zip] FROM [customerInfo] WHERE ([customerID] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="customerID" SessionField="customerID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
