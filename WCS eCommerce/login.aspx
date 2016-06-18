<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WCS_eCommerce.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .table-300px {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="cph2" runat="server">
    <asp:Panel runat="server" DefaultButton="btnLogin">
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblLoginError" runat="server" Visible="False" Font-Bold="True" Font-Italic="False" ForeColor="#FF3300"></asp:Label></td>
            </tr>
            <tr>
                <td class="table-300px">Username</td>
                <td>
                    <asp:TextBox ID="txtLoginUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="table-300px">Password</td>
                <td >
                    <asp:TextBox ID="txtLoginPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="Button1_Click" Width="70px" />
            </tr>
        </table>
    </asp:Panel>
    <hr />
    <asp:Panel runat="server" DefaultButton="btnRegister">
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblError" runat="server" Visible="False" Font-Bold="True" Font-Italic="False" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="table-300px">Username</td>
                <td>
                    <asp:TextBox ID="txtRegisterUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="table-300px">Password</td>
                <td>
                    <asp:TextBox ID="txtRegisterPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="table-300px">First Name</td>
                <td>
                    <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="table-300px">Last Name</td>
                <td>
                    <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="table-300px">Address 1</td>
                <td>
                    <asp:TextBox ID="txtAdd1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="table-300px">Address 2</td>
                <td>
                    <asp:TextBox ID="txtAdd2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="table-300px">City</td>
                <td>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="table-300px">State</td>
                <td>
                    <asp:DropDownList ID="ddlState" runat="server">
                        <asp:ListItem Value="AL">Alabama</asp:ListItem>
                        <asp:ListItem Value="AK">Alaska</asp:ListItem>
                        <asp:ListItem Value="AZ">Arizona</asp:ListItem>
                        <asp:ListItem Value="AR">Arkansas</asp:ListItem>
                        <asp:ListItem Value="CA">California</asp:ListItem>
                        <asp:ListItem Value="CO">Colorado</asp:ListItem>
                        <asp:ListItem Value="CT">Connecticut</asp:ListItem>
                        <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
                        <asp:ListItem Value="DE">Delaware</asp:ListItem>
                        <asp:ListItem Value="FL">Florida</asp:ListItem>
                        <asp:ListItem Value="GA">Georgia</asp:ListItem>
                        <asp:ListItem Value="HI">Hawaii</asp:ListItem>
                        <asp:ListItem Value="ID">Idaho</asp:ListItem>
                        <asp:ListItem Value="IL">Illinois</asp:ListItem>
                        <asp:ListItem Value="IN">Indiana</asp:ListItem>
                        <asp:ListItem Value="IA">Iowa</asp:ListItem>
                        <asp:ListItem Value="KS">Kansas</asp:ListItem>
                        <asp:ListItem Value="KY">Kentucky</asp:ListItem>
                        <asp:ListItem Value="LA">Louisiana</asp:ListItem>
                        <asp:ListItem Value="ME">Maine</asp:ListItem>
                        <asp:ListItem Value="MD">Maryland</asp:ListItem>
                        <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
                        <asp:ListItem Value="MI">Michigan</asp:ListItem>
                        <asp:ListItem Value="MN">Minnesota</asp:ListItem>
                        <asp:ListItem Value="MS">Mississippi</asp:ListItem>
                        <asp:ListItem Value="MO">Missouri</asp:ListItem>
                        <asp:ListItem Value="MT">Montana</asp:ListItem>
                        <asp:ListItem Value="NE">Nebraska</asp:ListItem>
                        <asp:ListItem Value="NV">Nevada</asp:ListItem>
                        <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
                        <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
                        <asp:ListItem Value="NM">New Mexico</asp:ListItem>
                        <asp:ListItem Value="NY">New York</asp:ListItem>
                        <asp:ListItem Value="NC">North Carolina</asp:ListItem>
                        <asp:ListItem Value="ND">North Dakota</asp:ListItem>
                        <asp:ListItem Value="OH">Ohio</asp:ListItem>
                        <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
                        <asp:ListItem Value="OR">Oregon</asp:ListItem>
                        <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
                        <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
                        <asp:ListItem Value="SC">South Carolina</asp:ListItem>
                        <asp:ListItem Value="SD">South Dakota</asp:ListItem>
                        <asp:ListItem Value="TN">Tennessee</asp:ListItem>
                        <asp:ListItem Value="TX">Texas</asp:ListItem>
                        <asp:ListItem Value="UT">Utah</asp:ListItem>
                        <asp:ListItem Value="VT">Vermont</asp:ListItem>
                        <asp:ListItem Value="VA">Virginia</asp:ListItem>
                        <asp:ListItem Value="WA">Washington</asp:ListItem>
                        <asp:ListItem Value="WV">West Virginia</asp:ListItem>
                        <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
                        <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td class="table-300px">Zip</td>
                <td>
                    <asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
