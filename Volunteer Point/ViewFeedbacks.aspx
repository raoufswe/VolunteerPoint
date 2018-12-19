<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeFile="ViewFeedbacks.aspx.cs" Inherits="ViewFeedbacks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link rel="stylesheet" href="css/reg.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="container2">
        <asp:Label ID="Label1" runat="server" Text="Search Feedback:"></asp:Label>
        &nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;
        <asp:Button ID="btnSearch" runat="server" OnClick="clickSearch" Text="Search" />
        &nbsp;&nbsp;
        <asp:Button ID="BtnViewAll" runat="server" OnClick="clickViewAll" Text="View All" />
    </div>
    <br />
    <asp:Table ID="Table1" runat="server" BorderStyle="Inset" BorderWidth="1px" GridLines="Both" Visible="False">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Person Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Person Phone</asp:TableHeaderCell>
            <asp:TableHeaderCell>Person Email</asp:TableHeaderCell>
            <asp:TableHeaderCell>Feedback</asp:TableHeaderCell>
        </asp:TableHeaderRow>
    </asp:Table>
</asp:Content>
