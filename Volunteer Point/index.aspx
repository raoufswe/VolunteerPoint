<%@ Page Title="" Language="C#" MasterPageFile="~/MasterMain.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="home-slider owl-carousel">
      <div class="slider-item dark" style="background-image: url('img/slider-1.jpg');">

        <div class="container">
          <div class="row slider-text align-items-center">
            <div class="col-md-6 col-sm-12 element-animate">
              <span class="child-name cursive" style="color:white;">Remarkable Network</span>
              <h1 style="color:white;">VolunteerPoint is a platform</h1>
              <p style="color:white;"> in the nonprofit world with the most volunteers, nonprofits and opportunities to make a difference..</p>
              <% if (Session["uType"] == null)
              {%>
              <p><a href="register1.aspx" class="btn btn-primary">Join as a Volunteer</a></p>
              <p><a href="register2.aspx" class="btn btn-primary">Join as an Organizer</a></p>
                <%}%>
            </div>
          </div>
        </div>

      </div>

      <div class="slider-item" style="background-image: url('img/slider-2.jpg');">
        <div class="container">
          <div class="row slider-text align-items-center">
            <div class="col-md-6 col-sm-12 element-animate">
              <span class="child-name cursive">More people, More impact</span>
              <h1>We match you with people who are</h1>
              <p>passionate about and committed to your cause, and who can help when and where you need them.</p>
              <p><a href="#" class="btn btn-primary">Joins as a Volunteer</a></p>
              <p><a href="#" class="btn btn-primary">Joins as Organizer</a></p>
            </div>
          </div>
        </div>

      </div>

    </section>
    <!-- END slider -->


    <section class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-5 mb-4">
            <?xml version="1.0" encoding="iso-8859-1"?>

            <img src="img/2.jpg" class="pic" alt="Mountain View"">

<p class="mb-5">Join a platform that gathers people care as much as you do. Start using your time, effort and skills for the goodness.. <br>
Volunteers are able to change the world. Getting started is easy.</p>
<p></p>

          </div>
          <div class="col-md-1"></div>
          <div class="col-md-6">
            <h2 class="mb-5">How to be part of us as a Volunteer?</h2>
            <div id="accordion">
              <div class="card mb-2">
                <h5 class="mb-0">
                  <a href="#" class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    1. Register in our Platform
                    <span class="icon ion-chevron-down"></span>
                  </a>
                </h5>

                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                  <div class="card-body">
                  The fisrt step to be a volunteer in our platform is to Register. A basic form needs to be filled up so we all can know about you!
                  </div>
                </div>
              </div>
              <div class="card mb-2">
                <h5 class="mb-0">
                  <a href="#" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    2. Browse for the volunteer opportunities
                    <span class="icon ion-chevron-down"></span>
                  </a>
                </h5>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                  <div class="card-body">
                    Once you created your profile in VolunteerPoint, you will be accessed to our panel where you can browse the volunteer opportunities and search for a specific one in your city.
                  </div>
                </div>
              </div>
              <div class="card mb-2">
                <h5 class="mb-0">
                  <a href="#" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    3. Apply for one
                    <span class="icon ion-chevron-down"></span>
                  </a>
                </h5>
                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
                  <div class="card-body">
                if all the requirements are suited for your time, effort and skills, then you are encouraged to apply!.
                  </div>
                </div>
              </div>

              <div class="card mb-2">
                <h5 class="mb-0">
                  <a href="#" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                    4. Meet your Match
                    <span class="icon ion-chevron-down"></span>
                  </a>
                </h5>
                <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
                  <div class="card-body">
                    If you and the organizer both decide it's a good fit, you can begin the work!.
                  </div>
                </div>
              </div>


            </div>


          </div>
        </div>
      </div>

    </section>
    <section class="section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 element-animate">
          <div class="col-md-8 text-center">
            <h2 class="text-uppercase heading mb-4">About Us</h2>
            <p class="mb-5 lead">We believe everyone should have the chance to make a difference in our world. That's why we have decided to develop a volunteerPoint. </p>
            <p class="mb-0"><a href="about.aspx" class="btn btn-primary">Find More<span class="icon-arrow"></span></a></p>
          </div>
        </div>
        <div class="row element-animate">
          <div class="major-caousel js-carousel-1 owl-carousel">
            <div>
              <div class="media d-block media-custom text-left">
                <img src="img/first.jpg" alt="Image Placeholder" class="img-fluid">
                <div class="media-body">
                  <h3 class="mt-0 text-black">“The purpose of life is not to be happy. It is to be useful, honorable and compassionate.” <a href="#" class="text-black"><span class="age">Ralph Waldo Emerson</span></a></h3>
                </div>
              </div>
            </div>
            <div>
              <div class="media d-block media-custom text-left">
                <img src="img/middle.jpg" alt="Image Placeholder" class="img-fluid">
                <div class="media-body">
                  <h3 class="mt-0 text-black">“No one is useless in this world who lightens the burdens of another.” <a href="#" class="text-black">Kim Chun Chong, <span class="age">Charles Dickens</span></a></h3>
                </div>
              </div>
            </div>
            <div>
              <div class="media d-block media-custom text-left">
                <img src="img/last.jpg" alt="Image Placeholder" class="img-fluid">
                <div class="media-body">
                  <h3 class="mt-0 text-black"><a href="#" class="text-black">“You have not lived today until you have done something for someone who can never repay you.” <span class="age">John Bunyan</span></a></h3>
                </div>
              </div>
            </div>

          </div>
          <!-- END slider -->
        </div>
      </div>
    </section>
    <!-- END section -->

</asp:Content>

