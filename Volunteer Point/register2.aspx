<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeFile="register2.aspx.cs" Inherits="register1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/reg.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container2">
        <div class="container22">
            <h1>Register As A Organiser</h1>
        </div>
        <div class="form" >
            <form id="contactform">
                <p class="contact"><label for="name">Name</label></p>
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Insert Your Name" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                <p class="contact"><label for="email">Email</label></p>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Insert Your Email" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                <p class="contact"><label for="password">Create a password</label></p>
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Insert Password" ControlToValidate="txtpwd" ForeColor="Red"></asp:RequiredFieldValidator>
                <p class="contact"><label for="repassword">Confirm your password</label></p>
                <asp:TextBox ID="txtpwd2" runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Try Again" ControlToValidate="txtpwd2" EnableClientScript="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <fieldset>
                    <label>Birthday</label>
                    <label class="month">
                        <asp:DropDownList ID="lBmonth" class="select-style" runat="server">
                            <asp:ListItem>Month</asp:ListItem>
                            <asp:ListItem Value="01">January</asp:ListItem>
                            <asp:ListItem Value="02">February</asp:ListItem>
                            <asp:ListItem Value="03">March</asp:ListItem>
                            <asp:ListItem Value="04">April</asp:ListItem>
                            <asp:ListItem Value="05">May</asp:ListItem>
                            <asp:ListItem Value="06">June</asp:ListItem>
                            <asp:ListItem Value="07">July</asp:ListItem>
                            <asp:ListItem Value="08">August</asp:ListItem>
                            <asp:ListItem Value="09">September</asp:ListItem>
                            <asp:ListItem Value="10">October</asp:ListItem>
                            <asp:ListItem Value="11">November</asp:ListItem>
                            <asp:ListItem Value="12">December</asp:ListItem>
                        </asp:DropDownList>
                    </label>
                    <label>Day<asp:TextBox ID="txtBdate" class="birthday" runat="server"></asp:TextBox></label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Insert Day" ForeColor ="Red" ControlToValidate="txtBdate" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                    <label>Year<asp:TextBox ID="txtByear" class="birthyear" runat="server"></asp:TextBox></label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Insert Year" ForeColor="Red" ControlToValidate="txtByear" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </fieldset>
                <asp:DropDownList ID="lgender" class="select-style gender" runat="server">
                    <asp:ListItem>i am..</asp:ListItem>
                    <asp:ListItem Value="m">Male</asp:ListItem>
                    <asp:ListItem Value="f">Female</asp:ListItem>
                    <asp:ListItem Value="o">Other</asp:ListItem>
                </asp:DropDownList>
                <br><br>
                <p class="contact"><label for="phone">Mobile phone</label></p>
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox> <br>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="Please Insert Phone Number" ForeColor="Red" ValidationExpression="^(\+?6?01)[0-46-9]-*[0-9]{7,8}$"></asp:RegularExpressionValidator>
                <asp:Button ID="register" class="buttom" runat="server" Text="Register Me!" OnClick="register_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
            </form>
        </div>
    </div>
</asp:Content>

