<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeFile="myprofile2.aspx.cs" Inherits="myprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">.auto-style1{width:100%}.auto-style2{width:159px}.auto-style3{width:159px;height:23px}.auto-style4{height:23px}</style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Profile</h1>
    </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtname" runat="server" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td>
                    <asp:TextBox ID="txtpwd" runat="server" Width="225px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style2">Birthday:</td>
                <td>Month
                    <asp:TextBox ID="txtBmonth" runat="server" Width="71px"></asp:TextBox>
                    &nbsp;Day
                    <asp:TextBox ID="txtBdate" runat="server" Width="72px"></asp:TextBox>
                    &nbsp;Year
                    <asp:TextBox ID="txtByear" runat="server" Width="72px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Gender:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtGender" runat="server" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact:</td>
                <td>
                    <asp:TextBox ID="txtContact" runat="server" Width="225px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update Profile" OnClick="btnUpdate_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>