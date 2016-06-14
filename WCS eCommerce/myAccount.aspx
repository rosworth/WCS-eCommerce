<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="myAccount.aspx.cs" Inherits="WCS_eCommerce.myAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="cph2" runat="server">
    Account Info
    <br />
    <asp:GridView ID="accountGrid" runat="server" AutoGenerateColumns="False" DataSourceID="accountInfo" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="550px">
        <Columns>
            <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" >
            <ControlStyle Width="75px" />
            </asp:BoundField>
            <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" >
            <ControlStyle Width="75px" />
            </asp:BoundField>
            <asp:BoundField DataField="address1" HeaderText="Address 1" SortExpression="address1" />
            <asp:BoundField DataField="address2" HeaderText="Address 2" SortExpression="address2" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="zip" HeaderText="Zip" SortExpression="zip" />
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
            <asp:SessionParameter Name="customerID" SessionField="customerID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
