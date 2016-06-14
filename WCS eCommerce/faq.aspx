<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="faq.aspx.cs" Inherits="WCS_eCommerce.faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .question {
            font-weight: bold;
            font-style: italic;
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="cph2" runat="server">
    <h1 class="question">
        There is no payment form. How is payment processed?
    </h1>
    <p>
        Our representative will call when your order has been received to confirm your order and process your payment.
    </p>
    <h1 class="question">
        What types of payment are available?
    </h1>
    <p>
        We accept major credit cards, cash (payment on delivery - 10% deposit), money orders, and PayPal.
    </p>
</asp:Content>
