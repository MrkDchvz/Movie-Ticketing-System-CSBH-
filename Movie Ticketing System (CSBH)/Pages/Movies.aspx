<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Movies.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Movies</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- SwiperJS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
    <!-- Font-Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- CSS -->
    <link href="../SASS/Movies.css" rel="stylesheet" />
    <link href="../SASS/Movies.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <!--Navigation-bar-->
        <nav class="nav-bar">
            <div class="nav-logo"><i class="nav-icon-logo fa-solid fa-bug-slash"></i></div>
            <div class="nav-links">
                <a href="Home.aspx">Home</a>
                <a href="movies.aspx" class="active-link">movies</a>
                <a href="UserProfile.aspx">Profile</a>
                <asp:LinkButton ID="LogoutButtonDesktop" CssClass="text-danger" runat="server"><span>Logout</span></asp:LinkButton>

            </div>
            <a role="button" class="nav-hamburger">
                <div class="nav-hamburger-bar"></div>
            </a>
        </nav>

        <!--Mobile Navigation-menu-->
        <nav class="nav-mobile-menu">
            <div class="nav-mobile-links">
                <a href="Home.aspx">Home</a>
                <a href="Movies.aspx">Movies</a>
                <a href="UserProfile.aspx">Profile</a>
                <asp:LinkButton ID="logoutButtonMobile" CssClass="text-danger" runat="server"><i class="bi bi-box-arrow-in-right me-2 fa-sm"></i><span>Logout</span></asp:LinkButton>
            </div>
        </nav>

        <!--Modal Confirmation-->
        <div class="modal fade" id="ConfirmModal" tabindex="-1" aria-labelledby="ConfirmModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ConfirmModalLabel">Confirm Booking</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <h4>Booking Confirmation</h4>
                        <hr />
                        <div class="booking-account">
                            <h5 class="d-inline-block  me-2">Account Name: </h5>
                            <asp:Label ID="BookingAccount" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="booking-date">
                            <h5 class="d-inline-block  me-2">Booking date: </h5>
                            <asp:Label ID="BookingDate" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="booking-movie">
                            <h5 class="d-inline-block me-2">Movie: </h5>
                            <asp:Label ID="BookingMovie" runat="server" CssClass="d-inline-block" Text="Label"></asp:Label>
                        </div>

                        <input id="HdnLabelDate" type="hidden" runat="server" clientidmode="Static" />
                        <input id="HdnLabelName" type="hidden" runat="server" clientidmode="Static" />
                       


                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <asp:Button ID="SubmitBooking" runat="server"  CssClass="btn btn-primary" Text="Confirm"/>
                    </div>
                </div>
            </div>
        </div>
        </div>

        <!--Modal Success-->
        

        

        <!-- Slider main container -->
        <div class="swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
                <!-- Slides -->
                <div class="slide-list slide-1 swiper-slide">
                    <article>
                        <div class="article__content">
                            <h1 class="movie__title">Avengers: End Game</h1>
                            <div class="movie__tags">
                                <div class="tags tags--lang">Eng</div>
                                <div class="tags tags--genre">Thriller</div>
                                <div class="tags tags--length">145 mins</div>
                            </div>
                            <p class="movie__description">Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers must figure out a way to bring back their  allies for an epic showdown with Thanos.</p>
                            <button type="button" class="btn btn--1 article__button" data-bs-toggle="modal" data-movie="Avengers: End Game" data-bs-target="#ConfirmModal">Book Now</button>

                        </div>




                    </article>
                </div>

                <div class="slide-list slide-2 swiper-slide">
                    <article>
                        <div class="article__content">
                            <h1 class="movie__title">Joker</h1>
                            <div class="movie__tags">
                                <div class="tags tags--lang">Eng</div>
                                <div class="tags tags--genre">Thriller</div>
                                <div class="tags tags--length">145 mins</div>
                            </div>
                            <p class="movie__description">Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City. Isolated, bullied and disregarded by society, Fleck begins a slow descent into madness as he transforms into the criminal mastermind known as the Joker.</p>

                            <button type="button" class="btn btn--2 article__button" data-bs-toggle="modal" data-movie="Joker" data-bs-target="#ConfirmModal">Book Now</button>
                        </div>
                    </article>
                </div>
                <div class="slide-list slide-3 swiper-slide">
                    <article>
                        <div class="article__content">

                            <h1 class="movie__title">Venom</h1>
                            <div class="movie__tags">
                                <div class="tags tags--lang">Eng</div>
                                <div class="tags tags--genre">Thriller</div>
                                <div class="tags tags--length">145 mins</div>
                            </div>
                            <p class="movie__description">Journalist Eddie Brock is trying to take down Carlton Drake, the founder of the Life Foundation. While investigating one of Drake's experiments, Eddie's body merges with the alien Venom. Venom tries to control the new and dangerous abilities that Eddie finds so intoxicating.</p>
                            <button type="button" class="btn btn--3 article__button" data-bs-toggle="modal" data-movie="Venom" data-bs-target="#ConfirmModal">Book Now</button>

                        </div>

                    </article>


                </div>



            </div>

            <!--pagination -->
            <div class="swiper-pagination"></div>

            <!--navigation buttons -->
            <div class="nav-button swiper-button-prev"></div>
            <div class="nav-button swiper-button-next"></div>

            <!-- scrollbar -->
            <div class="swiper-scrollbar"></div>




        </div>

    </form>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <script>
        const allBtn = document.querySelectorAll('.article__button');
        allBtn.forEach((btn) => {
            btn.addEventListener('click', () => {
                const movie = btn.dataset.movie;
                const date = new Date;
                const today = date.toLocaleDateString();
                const BookingDate = document.getElementById('BookingDate');
                const BookingMovie = document.getElementById('BookingMovie');

                const hdnLabelName = document.getElementById('<%= HdnLabelName.ClientID %>');
                const hdnLabelDate = document.getElementById('<%= HdnLabelDate.ClientID %>');

                hdnLabelName.value = btn.dataset.movie;
                hdnLabelDate.value = today;


                BookingMovie.innerHTML = btn.dataset.movie;
                BookingDate.innerHTML = today;

            })
        })


    </script>

    <script>
        console.log("Hello");
        const hamburger = document.querySelector(".nav-hamburger");
        const mobileNav = document.querySelector(".nav-mobile-menu");
        hamburger.addEventListener('click', () => {
            hamburger.classList.toggle("isactive");
            mobileNav.classList.toggle("isactive");
        })
    </script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>




    <!-- Jquery script-->
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

    <script>
        const swiper = new Swiper('.swiper', {
            // Optional parameters
            loop: true,

            // If we need pagination
            pagination: {
                el: '.swiper-pagination',
            },

            // Navigation arrows
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },

            // And if we need scrollbar
            scrollbar: {
                el: '.swiper-scrollbar',
            },

            /*autoplay: {
              delay: 2500,
              disableoninteraction: false,
            } */
        });
    </script>
</body>
</html>
