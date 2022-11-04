<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Movies.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>

    <link href="CSS/Movies.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body id="body">
    <nav class="nav-bar">
        <div id="nav-logo-section" class="nav-section"><i class="fa-solid fa-bug-slash"></i>CSBH</div>
        <div id="nav-link-section" class="nav-section">
            <a href="#">Home</a>
            <a href="#">Movie</a>
        </div>
        <div id="nav-profile-section" class="nav-section">
            <a href="#">Profile</a>
        </div>
        <button class="hamburger">
            <div class="bar"></div>
        </button>
    </nav>
    <nav class="mobile-nav">
        <a href="#">Home</a>
        <a href="#">Movie</a>
        <a href="#">Profile</a>
    </nav>

    <main>
        <article>
            <div class="article-image-section article-section"></div>
            <div class="article-description-section article-section"></div>
            <div class="article-title-section article-section">
                <h2>Recreation From Scratch</h2>
                <button class="button-booknow ">
                    <p>Book now</p>
                </button>
            </div>
            <div class="article-button-section article-section">
                <button class="button-left button"><i class="fa-solid fa-left-long fa-3x"></i></button>
                <button class="button-right button"><i class="fa-solid fa-right-long fa-3x"></i></button>
            </div>
        </article>
    </main>



    <script>
        const hamburger = document.querySelector(".hamburger");
        const container = document.querySelector("#body");
        const mobilenav = document.querySelector(".mobile-nav")
        hamburger.addEventListener('click', function () {
            hamburger.classList.toggle("isactive");
            mobilenav.classList.toggle("isactive");
            body.classList.toggle("isactive");
        })
    </script>
</body>
</html>
