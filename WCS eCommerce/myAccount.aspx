<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="myAccount.aspx.cs" Inherits="WCS_eCommerce.myAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph1" runat="server">
    <p>
        Customer Account Page</p>
</asp:Content>
<asp:Content ContentPlaceHolderID="cph2" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="dateTime" HeaderText="Date" SortExpression="dateTime" />
            <asp:BoundField DataField="deposit" HeaderText="Deposit" SortExpression="deposit" DataFormatString="{0:c}" />
            <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" DataFormatString="{0:c}" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\WCS.accdb" ProviderName="System.Data.OleDb" SelectCommand="SELECT [dateTime], [deposit], [total] FROM [order] WHERE ([customerID] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="customerID" SessionField="customerID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>