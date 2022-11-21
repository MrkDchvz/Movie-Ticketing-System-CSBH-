<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    
    <link href="CSS/home.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />


</head>
<body id="body">
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
                    </ul>
                </nav>
                <button class="hamburger">
                    <div class="bar"></div>
                </button>
            </div>
       </header>
        <nav class="mobile-nav">
            <a href="#">Home</a>
            <a href="#">Movies</a>
            <a href="#">Profile</a>
        </nav>

        <div class="content">
            <h1 class="content--heading">Always here for your <span class="primary-text">entertainment.</span></h1>
            <p class="content--sub-heading">The cinema that answers all of your needs and provides best watching experience.</p>
            <button type="button" class="content--button"><span></span>Book now!</button>
        </div>
   </div>


    <div class="second-container"></div>






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
