<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeFile="EventCreate.aspx.cs" Inherits="EventCreate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
            <h1>Create Event</h1>

        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Event Name:</td>
                <td>
                    <asp:TextBox ID="txtEventName" runat="server" Width="251px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEventName" ErrorMessage="Please Insert Event Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Event Date:</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email:</td>
                <td class="auto-style4">
                    
                    <asp:TextBox ID="txtEmail" runat="server" Width="250px" CausesValidation="True"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Insert Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Organizer:</td>
                <td>
                    <asp:TextBox ID="txtOrganizer" runat="server" Width="251px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOrganizer" ErrorMessage="Please insert Organizer Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Contact:</td>
                <td>
                    <asp:TextBox ID="txtContact" runat="server" Width="250px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContact" ErrorMessage="Please Insert Contact Number" ForeColor="Red" ValidationExpression="^(\+?6?01)[0-46-9]-*[0-9]{7,8}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Description:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtdcsp" runat="server" Height="91px" Width="519px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdcsp" ErrorMessage="Please Provide Event Information" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                </td>
            </tr>
        </table>
        <div>
        </div>
</asp:Content>

