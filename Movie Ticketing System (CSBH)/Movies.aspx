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
        <!-- ARTICLE 1 -->
        <article class="article-group" data-index ="0" data-status ="active">
            <div class="article-image-section article-section"></div>
            <div class="article-description-section article-section">
                <h2>Movie Info</h2>
                <p>
                Tomoya Aki, an otaku, has been obsessed with collecting anime and light novels for years, attaching himself to various series with captivating stories and characters. Now, he wants to have a chance of providing the same experience for others by creating his own game, but unfortunately, Tomoya cannot do this task by himself.
                </p>
            </div>
            <div class="article-title-section article-section">
                <h2>Saekano: How to raise a boring girlfriend</h2>
                <button class="button-booknow ">
                    <p>Book now</p>
                </button>
            </div>
            <div class="article-button-section article-section">
                <button class="button-left button" type="button" onclick="handleLeftClick()"><i class="fa-solid fa-left-long fa-3x"></i></button>
                <button class="button-right button" type="button" onclick="handleRightClick()"><i class="fa-solid fa-right-long fa-3x"></i></button>
            </div>
        </article>
        <!-- ARTICLE 2 -->
        <article class="article-group" data-index ="1" data-status ="inactive">
            <div class="article-image-section article-section"></div>
            <div class="article-description-section article-section">
                <h2>Movie Info</h2>
                <p>
                When fellow classmate Hitagi Senjougahara falls down the stairs and is caught by Araragi, the boy realizes that the girl is unnaturally weightless. Despite Senjougahara's protests, Araragi insists he help her, deciding to enlist the aid of Oshino, the very man who had once helped him with his own predicament.
                </p>
            </div>
            <div class="article-title-section article-section">
                <h2>Bakemonogatari</h2>
                <button class="button-booknow ">
                    <p>Book now</p>
                </button>
            </div>
            <div class="article-button-section article-section">
                <button class="button-left button" type="button" onclick="handleLeftClick()"><i class="fa-solid fa-left-long fa-3x"></i></button>
                <button class="button-right button" type="button" onclick="handleRightClick()"><i class="fa-solid fa-right-long fa-3x"></i></button>
            </div>
        </article>
        <!-- ARTICLE 3 -->
        <article class="article-group" data-index ="2" data-status ="inactive">
            <div class="article-image-section article-section"></div>
            <div class="article-description-section article-section">
                <h2>Movie Info</h2>
                <p>
                In the year 2010, the Holy Empire of Britannia is establishing itself as a dominant military nation, starting with the conquest of Japan. Renamed to Area 11 after its swift defeat, Japan has seen significant resistance against these tyrants in an attempt to regain independence.
                </p>
            </div>
            <div class="article-title-section article-section">
                <h2>Code:geass</h2>
                <button class="button-booknow ">
                    <p>Book now</p>
                </button>
            </div>
            <div class="article-button-section article-section">
                <button class="button-left button" type="button" onclick="handleLeftClick()"><i class="fa-solid fa-left-long fa-3x"></i></button>
                <button class="button-right button" type="button" onclick="handleRightClick()"><i class="fa-solid fa-right-long fa-3x"></i></button>
            </div>
        </article>
        <!-- ARTICLE 4 -->
        <article class="article-group" data-index ="3" data-status ="inactive">
            <div class="article-image-section article-section"></div>
            <div class="article-description-section article-section">
                <h2>Movie Info</h2>
                <p>
                Eccentric scientist Rintarou Okabe has a never-ending thirst for scientific exploration. Together with his ditzy but well-meaning friend Mayuri Shiina and his roommate Itaru Hashida, Rintarou founds the Future Gadget Laboratory in the hopes of creating technological innovations that baffle the human psyche. Despite claims of grandeur, the only notable "gadget" the trio have created is a microwave that has the mystifying power to turn bananas into green goo.
                </p>
            </div>
            <div class="article-title-section article-section">
                <h2>Steins;Gate</h2>
                <button class="button-booknow ">
                    <p>Book now</p>
                </button>
            </div>
            <div class="article-button-section article-section">
                <button class="button-left button" type="button" onclick="handleLeftClick()"><i class="fa-solid fa-left-long fa-3x"></i></button>
                <button class="button-right button" type="button" onclick="handleRightClick()"><i class="fa-solid fa-right-long fa-3x"></i></button>
            </div>
        </article>
        <!-- ARTICLE 5 -->
        <article class="article-group" data-index ="4" data-status ="inactive">
            <div class="article-image-section article-section"></div>
            <div class="article-description-section article-section">
                <h2>Movie Info</h2>
                <p>
                At the renowned Shuchiin Academy, Miyuki Shirogane and Kaguya Shinomiya are the student body's top representatives. Ranked the top student in the nation and respected by peers and mentors alike, Miyuki serves as the student council president. Alongside him, the vice president Kaguya—eldest daughter of the wealthy Shinomiya family—excels in every field imaginable. They are the envy of the entire student body, regarded as the perfect couple.
                </p>
            </div>
            <div class="article-title-section article-section">
                <h2>Love is war</h2>
                <button class="button-booknow ">
                    <p>Book now</p>
                </button>
            </div>
            <div class="article-button-section article-section">
                <button class="button-left button" type="button" onclick="handleLeftClick()"><i class="fa-solid fa-left-long fa-3x"></i></button>
                <button class="button-right button" type="button" onclick="handleRightClick()"><i class="fa-solid fa-right-long fa-3x"></i></button>
            </div>
        </article>
    </main>


    <!-- Hamburg Menu Logic -->
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

    <!-- Slider Logic -->
    <script>
        let activeIndex = 0;
        const groups = document.getElementsByClassName("article-group");

        const handleRightClick = () => {
            const newIndex = activeIndex < groups.length - 1 ? activeIndex + 1 : 0;

            let currentArticle = document.querySelector(`[data-index="${activeIndex}"]`);
            let nextArticle = document.querySelector(`[data-index="${newIndex}"]`);

            nextArticle.dataset.status = "initial-after"

            currentArticle.dataset.status = "after";
            setTimeout(() => {
                nextArticle.dataset.status = "active";
                activeIndex = newIndex;
            });
        }
        const handleLeftClick = () => {
            const newIndex = activeIndex > 0 ? activeIndex - 1 : groups.length - 1;

            let currentArticle = document.querySelector(`[data-index="${activeIndex}"]`);
            let nextArticle = document.querySelector(`[data-index="${newIndex}"]`);

            nextArticle.dataset.status = "initial-before"

            currentArticle.dataset.status = "before";
      
            setTimeout(() => {
                nextArticle.dataset.status = "active";
                activeIndex = newIndex;
        
            });
        }
    </script>
</body>
</html>
