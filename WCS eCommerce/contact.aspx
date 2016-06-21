<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WCS_eCommerce.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .tableSpacing{
            border-collapse: separate;
            border-spacing: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph2" runat="server">
    <asp:Panel runat="server">
        <table class="tableSpacing">
            <tr>
                <td>First Name</td>
                <td>
                    <asp:TextBox ID="firstName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstName" ErrorMessage="First Name is required" ValidationGroup="contactForm"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    <asp:TextBox ID="lastName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lastName" ErrorMessage="Last Name is required" ValidationGroup="contactForm"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>E-mail Address</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="E-mail Address is required" ControlToValidate="txtEmail" ValidationGroup="contactForm"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="contactForm"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Category</td>
                <td>
                    <asp:DropDownList ID="category" runat="server">
                        <asp:ListItem>Suggestion</asp:ListItem>
                        <asp:ListItem>Question</asp:ListItem>
                        <asp:ListItem>Comment</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Message</td>
                <td>
                    <asp:TextBox ID="message" runat="server" Columns="50" Rows="5" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="message" ErrorMessage="Message cannot be empty" ValidationGroup="contactForm"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="contactForm" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
