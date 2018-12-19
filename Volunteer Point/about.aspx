<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="home-slider inner-page owl-carousel">
        <div class="slider-item " style="background-image: url('img/slider-1.jpg');">

        <div class="container">
            <div class="row slider-text align-items-center">
            <div class="col-md-7 col-sm-12 element-animate">
                <h1>About Us</h1>
                <nav aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-custom">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">About Us</li>
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
              <h3>About Us</h3>
              <ul class="list-unstyled sidelink">
                <li class="active"><a href="#">History</a></li>
                <li><a href="#">Leadership</a></li>
                <li><a href="#">Mission</a></li>
                <li><a href="#">Vision</a></li>
              </ul>
            </div>



          </div>
          <div class="col-md-8 order-1 main mb-5">
            <div class="row">

              <div class="col-md-12">
                <h2>History</h2>
                <p>We believe everyone should have the chance to make a difference in our world. That's why we have decided to develop a volunteerPoint for our Web Application Assignment. this type of websites is very rare on the internet and we trying our best to carry out a high-quality platform which is trusted by many people and organization.</p>
                <blockquote class="blockquote">
                  <p class="mb-0 text-black">&ldquo;There is only one happiness in this life, to love and be loved&rdquo;</p>
                  <footer class="blockquote-footer">George Sand <cite title="Source Title">Source Title</cite></footer>
                </blockquote>
                <p class="element-animate" data-animate-effect="fadeIn"><img src="img/big_image_1.jpg" alt="Image placeholder" class="img-fluid"></p>
              </div>
            </div>
          </div>

        </div>
        <!-- END row -->
      </div>
    </section>
</asp:Content>

