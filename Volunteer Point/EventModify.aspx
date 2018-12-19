<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeFile="EventModify.aspx.cs" Inherits="EventModify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/reg.css">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container2">
            <h1>Edit/Delete Event</h1>
        </div>
    <div class="container" style="border-bottom: 250px solid white">
        <p>
            Search
            Event: <asp:TextBox ID="txtSrch" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        </p>
        <asp:Panel ID="Panel1" runat="server" Height="64px">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Event Name:</td>
                    <td>
                        <asp:TextBox ID="txtEventnm" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Event Date:</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Email:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtemail" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Organizer:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtOrganizer" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Contact No:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtContact" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Description:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtdscpt" runat="server" Height="72px" Width="450px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        </div>
</asp:Content>

