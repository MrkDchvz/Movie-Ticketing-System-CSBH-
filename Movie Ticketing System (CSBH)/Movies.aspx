<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Movies.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Movies</title>
 
  <!-- SwiperJS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
  <!-- Font-Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <!-- CSS -->
    <link href="CSS/Movies.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
  <!--Navigation-bar-->
      <nav class="nav-bar">
        <div class="nav-logo"><i class="nav-icon-logo fa-solid fa-bug-slash"></i></div>
        <div class="nav-links">
          <a href="Home.aspx">Home</a>
          <a href="#">Profile</a>
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
            <a href="#">Profile</a>
             <asp:LinkButton ID="logoutButtonMobile" CssClass="text-danger" runat="server"><i class="bi bi-box-arrow-in-right me-2 fa-sm"></i><span>Logout</span></asp:LinkButton>
          </div>
      </nav>

      <!-- Slider main container -->
    <div class="swiper">
      <!-- Additional required wrapper -->
      <div class="swiper-wrapper">
        <!-- Slides -->
        <div class="slide-list slide-1 swiper-slide">
          <article>
            <div class="article-title-section article-section"><h1>Avengers: End Game</h1></div>
            <div class="article-description-section article-section">Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers must figure out a way to bring back their  allies for an epic showdown with Thanos.</div>
            <div class="article-button-section article-section"><button>Book Now</button></div>
          </article>
        </div>

        <div class="slide-list slide-2 swiper-slide">
            <article>
            <div class="article-title-section article-section"><h1>Joker</h1></div>
            <div class="article-description-section article-section">Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City. Isolated, bullied and disregarded by society, Fleck begins a slow descent into madness as he transforms into the criminal mastermind known as the Joker.</div>
            <div class="article-button-section article-section"><button>Book Now</button></div>
          </article>
        </div>
        <div class="slide-list slide-3 swiper-slide"><article>
            <div class="article-title-section article-section"><h1>Venom</h1></div>
            <div class="article-description-section article-section">Journalist Eddie Brock is trying to take down Carlton Drake, the founder of the Life Foundation. While investigating one of Drake's experiments, Eddie's body merges with the alien Venom. Venom tries to control the new and dangerous abilities that Eddie finds so intoxicating.</div>
            <div class="article-button-section article-section"><button>Book Now</button></div>
          </article></div>

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
  <script>
      const hamburger = document.querySelector(".nav-hamburger");
      const mobileNav = document.querySelector(".nav-mobile-menu");
      hamburger.addEventListener('click', () => {
          hamburger.classList.toggle("isactive");
          mobileNav.classList.toggle("isactive");
      })
  </script>
  <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

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
