<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <link href="CSS/admin.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 


</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex" id="wrapper">
            <!--Sidebar START-->
            <div  id="sidebar-wrapper">

                <div class="sidebar-heading text-center py-4 accent-text fs-4 fw-bold text-uppercase">
                    <i class="logo fa-sharp fa-solid fa-bug-slash"></i> CSBH
                </div>

                <div class="list-group list-group-flush my-3">
                    <a href="#" class="list-group-item list-group-item-action bg-transparent second-text active">
                        <i class="fa-sharp fa-solid fa-gauge-high me-2"></i>Dashboard
                    </a>
                    <a href="#" class=" rounded-pill list-group-item list-group-item-action bg-transparent second-text fw-bold">
                        <i class="fa-sharp fa-solid fa-user-tie me-2"></i>Profile
                    </a>
                    <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                        <i class="fa-sharp fa-solid fa-users me-2"></i>Users
                    </a>
                    <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                        <i class="fa-sharp fa-solid fa-ticket me-2"></i>Bookings
                    </a>
                    <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold">
                        <i class="fa-sharp fa-solid fa-clapperboard me-2"></i>Movies
                    </a>
                     <asp:LinkButton ID="btnLogout1" runat="server"  CssClass="text-danger list-group-item list-group-item-action bg-transparent second-text fw-bold"><i class=" fa-solid fa-power-off me-2"></i>Logout</asp:LinkButton>

                    

                </div>
            </div>

            <!--Sidebar END-->

            <!-- page-content START-->
            <div id="page-content-wrapper">

                <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
                    <div class="d-flex align-items-center">
                        <i class="fa-solid fa-chart-simple fs-2 me-3" id="menu-toggle"></i>
                        <h2 class="fs-2 m-0">Dashboard</h2>
                    </div>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>


                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle second-text fw-bold" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa-solid fa-user me-2 "></i>
                                    <asp:Label ID="txtusername" runat="server" Text=""></asp:Label>
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a href="#" class="dropdown-item">Profile</a></li>
                                    <li><asp:LinkButton id="btnLogout2" CssClass="dropdown-item" Text="Logout" runat="server"/></li>      
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>

                <div class="container-fluid px-4">
                    
                    <div class="row g-3 my-2">
                        <div class="col-md-3">
                            <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">0</h3>
                                <p class="fs-5">Bookings</p>
                            </div>
                            <i class="fa-solid fa-ticket fs-1  accent-text border rounded-full secondary-bg p-3"></i>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">0</h3>
                                <p class="fs-5">Movies</p>
                            </div>
                            <i class=" fa-sharp fa-solid fa-film fs-1  accent-text border rounded-full secondary-bg p-3"></i>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="p-3 bg-white shadow-sm d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2">0</h3>
                                <p class="fs-5">Users</p>
                            </div>
                            <i class="fa-sharp fa-solid fa-users  fs-1 accent-text border rounded-full secondary-bg p-3"></i>
                            </div>
                        </div>

                    </div>
                </div>

            </div> <!--page-content-wrapper-->
            
        </div>
    </form>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <script>
        var el = document.getElementById("wrapper")
        var toggleButton = document.getElementById("menu-toggle")

        toggleButton.onclick = function () {
            el.classList.toggle("toggled")
        }
    </script>
</body>
</html>
