<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="../SASS/home.css" rel="stylesheet" />
    <link href="../SASS/home.min.css" rel="stylesheet" />


</head>
<body id="body">
    <form id="form1" runat="server">
      <div class="container">
    <!-- Navigation bar -->
    <header class="navbar">
      <div class="navbar__logo"><i class="fa-solid fa-bug-slash navbar__logo--icon"></i><span class="navbar__logo--title">CSBH</span></div>
      <nav class="navbar--desktop">
        <ul class="navbar--desktop__list">
          <li class="navbar--desktop__item active-link"><a href="Home.aspx" class="link-style">Home</a></li>
          <li class="navbar--desktop__item"><a href="Movies.aspx" class="link-style">Movies</a></li>
            <li class="navbar--desktop__item"><a href="UserProfile.aspx" class="link-style">Profile</a></li>
          <li class="navbar--desktop__item"><asp:LinkButton ID="logoutButtonDesktop" CssClass="link-style link-style--danger" runat="server">Logout</asp:LinkButton></li>
        </ul>
      </nav>
      <a href="#" type="button" class="hamburger"><div class="hamburger__bar"></div></a>
    </header>

    <nav class="navbar--mobile">
      <ul class="navbar--mobile__list" role="list">
        <li class="navbar--mobile__item"><a href="Home.aspx" class="link-style">Home</a></li>
        <li class="navbar--mobile__item"><a href="Movies.aspx" class="link-style">Movies</a></li>
          <li class="navbar--mobile__item"><a href="UserProfile.aspx" class="link-style">Profile</a></li>
        <li class="navbar--mobile__item"><asp:LinkButton ID="logoutButtonMobile" CssClass="link-style link-style--danger" runat="server">Logout</asp:LinkButton></li>
      </ul>
    </nav>
    
    <main class="content">
      <div class="content__main">
        <h1 class="content__heading">Booking made easy</h1>
        <p class="content__sub-heading">The cinema that answers all of your needs and provides best watching experience.</p>
          <asp:LinkButton ID="BookNowButton" runat="server" href="Movies.aspx" CssClass="content__button link-style">Book now!</asp:LinkButton>
      </div>

    </main>
  </div>
    </form>

    <script>
        const hamburger = document.querySelector('.hamburger');
        const mobileNav = document.querySelector('.navbar--mobile');

        hamburger.addEventListener('click', () => {
            hamburger.classList.toggle('active');
            mobileNav.classList.toggle('active');
        })
    </script>
</body>
</html>
