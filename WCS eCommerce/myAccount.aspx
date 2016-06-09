<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="myAccount.aspx.cs" Inherits="WCS_eCommerce.myAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ContentPlaceHolderID="cph2" runat="server">
    Account Info
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
            <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
            <asp:BoundField DataField="address1" HeaderText="address1" SortExpression="address1" />
            <asp:BoundField DataField="address2" HeaderText="address2" SortExpression="address2" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
        </Columns>
    </asp:GridView>
    <br />
    Order History<br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="dateTime" HeaderText="dateTime" SortExpression="dateTime" />
            <asp:BoundField DataField="deposit" HeaderText="deposit" SortExpression="deposit" />
            <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
            <asp:BoundField DataField="payment" HeaderText="payment" SortExpression="payment" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\WCS.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [dateTime], [deposit], [total], [payment], [status] FROM [order] WHERE ([customerID] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="customerID" SessionField="customerID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\WCS.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [firstName], [lastName], [address1], [address2], [city], [state], [zip] FROM [customerInfo] WHERE ([customerID] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="customerID" SessionField="customerID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
