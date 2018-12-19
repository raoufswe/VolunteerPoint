<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="home-slider inner-page owl-carousel">
      <div class="slider-item " style="background-image: url('img/slider-1.jpg');">

        <div class="container">
          <div class="row slider-text align-items-center">
            <div class="col-md-7 col-sm-12 element-animate">
              <h1>Contact</h1>
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-custom">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Contact</li>
                </ol>
              </nav>
            </div>
          </div>
        </div>

      </div>
    </section>
    <!-- END slider -->



    <section class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-4 order-2 sidebar">


            <div class="sidebar-box">
              <h3 class="mb-4">Contact Details</h3>
              <h5 class="text-uppercase mb-3 h6 text-black">Address</h5>
              <p class="mb-5">Kuala lumpur<br> Malaysia 68000</p>

              <h5 class="text-uppercase mb-3 h6 text-black">Email Us At</h5>
              <p class="mb-5"><a href="mailto:info@volunteerpoint.com">info@volunteerpoint.com</a> <br> <a href="mailto:support@volunteerpoint.com">support@volunteerpoint.com</a></p>

              <h5 class="text-uppercase mb-3 h6 text-black">Call Us</h5>
              <p>Phone: (+60) 10284 93 42 </p>
            </div>



          </div>
          <div class="col-md-8 order-1 main">
            <div class="row">

              <div class="col-md-12">
                <h2>Let's chat</h2>
                <form action="#" method="post">
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="name">Name</label>
                       <asp:TextBox ID="txtname" runat="server" class="form-control "></asp:TextBox>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="phone">Phone</label>
                       <asp:TextBox ID="txtphone" runat="server" class="form-control "></asp:TextBox>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="email">Email</label>
                       <asp:TextBox ID="txtemail" runat="server" class="form-control "></asp:TextBox>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 form-group">
                      <label for="message">Write Message</label>
                        <asp:TextBox ID="txtmsg" runat="server" class="form-control" Height="150px"></asp:TextBox>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 form-group">
                    <asp:Button ID="btnReset" runat="server" Text="Send Message" OnClick="submit"  class="btn btn-primary" />
                    </div>
                  </div>
                </form>

              </div>
            </div>
          </div>

        </div>
        <!-- END row -->
      </div>
    </section>
</asp:Content>

