<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  <!-- Bootstrap-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <!-- Bootstrap Icons-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- CSS -->
    <link href="CSS/admin.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <!-- Page Wrapper -->
      <div class="d-flex" id="wrapper">

        <!-- Sidebar -->
        <div class="side-bar d-flex flex-column p-3" id="sidebar">
          <a href="Admin.aspx" id="logo" class="mb-1">CSBH</a>
          <hr>
          <ul id="side-bar-nav" class="nav nav-pills flex-column mb-auto">
            <li class="nav-item"><a class="nav-link active"><i class="bi bi-speedometer2 me-2 fa-sm"></i></i><span>Dashboard</span></a></li>
            <li><a class="nav-link"><i class="bi bi-film me-2 fa-sm"></i></i><span>Movies</span></a></li>
            <li><a href="Users.aspx" class="nav-link"><i class="bi bi-people me-2 fa-sm"></i><span>Users</span></a></li>
            <li><a class="nav-link"><i class="bi bi-ticket-detailed me-2 fa-sm"></i><span>Booking</span></a></li>
          </ul>
        </div>
        <!-- Sidebar END -->

        <!-- Content -->
        <div class="content">

          <!-- Navbar -->
          <nav class="navbar navbar-expand navbar-light bg-white topbar shadow px-3 mb-4">
            <a id="sidebarToggleTop" role="button" class="btn btn-link fa-lg">
              <i class="bi bi-x-circle"></i>

            </a>
            <<ul class="navbar-nav ml-auto">
              <li class="nav-item dropdown">
                <a  class=" text-decoration-none" href="#" role="button" id="dropDownUser" data-bs-toggle="dropdown" aria-expanded="false">
                    <i src="#" class="rounded-circle me-2 bi bi-person-circle fa-2x"  width="32" height="32"></i>
                </a>
                <div  class="dropdown-menu dropdown-menu-right shadow" aria-labelledby="dropDownUser">
                  <a class="dropdown-item" href="#"><i class="bi bi-person me-2 "></i><span>Profile</span></a>
                  <asp:LinkButton ID="logoutButton" CssClass="dropdown-item text-danger" runat="server"><i class="bi bi-box-arrow-in-right me-2 fa-sm"></i><span>Logout</span></asp:LinkButton>
                </div>
              </li>
            </ul>
          </nav>
          <!-- Navbar END -->

          <!-- Fluid Container -->
          <div class="container-fluid">
              <!--Header-->
            <div class="header mb-4">
              <h1 class="h3 mb-0 fw-800 text-black-color">Dashboard</h1>
            </div>

            <!--Card Container-->
            <div class="row">

              <!--Card Component (Earnings)-->
              <div class="card-component col-xl-4 col-md-6 mb-4">
                <div class="card shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class=" font-weight-bold text-main-color text-uppercase mb-1">Earnings</div>
                        <div class="h5 text-black-color font-weight-800 ">4000</div>
                      </div>
                      <div class="col-auto"><i class="bi bi-bank2 fa-3x  text-main-color"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--Card Component (Bookings)-->
              <div class=" card-component col-xl-4 col-md-6 mb-4">
                <div class="card shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class=" font-weight-bold text-main-color text-uppercase mb-1">Bookings</div>
                        <div class="h5 text-black-color font-weight-800 ">4000</div>
                      </div>
                      <div class="col-auto"><i class="bi bi-ticket-detailed-fill fa-3x  text-main-color"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!--Card Component (Users)-->
              <div class="card-component col-xl-4 col-md-6 mb-4">
                <div class="card shadow h-100 py-2">
                  <div class="card-body">
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                        <div class=" font-weight-bold text-main-color text-uppercase mb-1">Users</div>
                        <div class="h5 text-black-color font-weight-800 ">4000</div>
                      </div>
                      <div class="col-auto"><i class="bi bi-people-fill fa-3x  text-main-color"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            </div>
          </div>

        </div>
      </div>
    </form>
    <!-- JavaScript Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script>
        const el = document.getElementById("wrapper");
        const btn = document.getElementById("sidebarToggleTop")
        const icon = document.querySelector(".bi-x-circle")

        btn.addEventListener('click', () => {
            el.classList.toggle("toggled")
            icon.classList.toggle("bi-list")
            icon.classList.toggle("bi-x-circle")
        })
    </script>
</body>
</html>
