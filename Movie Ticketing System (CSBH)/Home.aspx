<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    
    <!-- Custom CSS -->
    <link href="CSS/home.css" rel="stylesheet" />
    <!-- Bootstrap Icons-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>
<body id="body">
    <form id="form1" runat="server"> 
        <div class="main-container">
            <header>
                <!-- Navigation bar-->
                <div class="nav-bar">

                    <div id="logo"><i class="fa-solid fa-bug-slash"></i>CS<span class="primary-text">BH</span></div>
                    <nav class="nav-link">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="Movies.aspx">Movies</a></li>
                            <li><a href="#">Profile</a></li>
                            <li><asp:LinkButton ID="logoutButtonDesktop" CssClass="text-danger" runat="server"><span>Logout</span></asp:LinkButton></li>
                        </ul>
                    </nav>
                    <a role="button" class="hamburger">
                        <div class="bar"></div>
                    </a>
                </div>
           </header>
            <nav class="mobile-nav">
                <a href="#">Home</a>
                <a href="Movies.aspx">Movies</a>
                <a href="#">Profile</a>
                <asp:LinkButton ID="logoutButtonMobile" CssClass="text-danger" runat="server"><i class="bi bi-box-arrow-in-right me-2 fa-sm"></i><span>Logout</span></asp:LinkButton>
            </nav>

            <div class="content">
                <h1 class="content--heading">Always here for your <span class="primary-text">entertainment.</span></h1>
                <p class="content--sub-heading">The cinema that answers all of your needs and provides best watching experience.</p>
                <a  href="Movies.aspx" role="button" class="content--button"><span></span>Book now!</a>
            </div>
       </div>


        <div class="second-container"></div>

    </form>




    <!-- JavaScript Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script>
        const hamburger = document.querySelector(".hamburger");
        const mobilenav = document.querySelector(".mobile-nav");
        const body = document.querySelector("#body");
        const navbar = document.querySelector(".nav-bar");
        

        hamburger.addEventListener('click', function () {
            hamburger.classList.toggle("isactive");
            mobilenav.classList.toggle("isactive");
            body.classList.toggle("isactive");

        });

        window.addEventListener('scroll', function () {
            navbar.classList.toggle("sticky", window.scrollY > 0);

        });
    </script>
</body>
</html>
