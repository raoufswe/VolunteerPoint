<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/reg.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container2">
        <div class="container22">
            <h1>Login As A Volunteer</h1>
        </div>
        <div class="form" >
            <form id="contactform">
                <p class="contact"><label for="email">Email</label></p>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Please Insert Email" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                <p class="contact"><label for="password">Password</label></p>
                <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="Please Insert Password" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
                <asp:Button ID="register" class="buttom" runat="server" Text="Log Me In!" OnClick="login_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
            </form>
        </div>
    </div>
</asp:Content>

