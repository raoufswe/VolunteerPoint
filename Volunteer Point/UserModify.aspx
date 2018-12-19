<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeFile="UserModify.aspx.cs" Inherits="UserModify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/reg.css">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container2">
            <h1>Edit/Delete User</h1>
        </div>
    <div class="container" style="border-bottom: 350px solid white">
        <p>
            Search
            User: <asp:TextBox ID="txtSrch" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        </p>
        <asp:Panel ID="Panel1" runat="server" Height="64px">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">User ID:</td>
                    <td>
                        <asp:TextBox ID="txtuid" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Full Name:</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Email:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtEmail" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtpwd" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Birth Month:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtBmonth" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Birth Date:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtBdate" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Birth Year:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtByear" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Gender:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtGender" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Contact Number:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtContact" runat="server" Width="150px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">User Type:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtutype" runat="server" Width="150px"></asp:TextBox>
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


