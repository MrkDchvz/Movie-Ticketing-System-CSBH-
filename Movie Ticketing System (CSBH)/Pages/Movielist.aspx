<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Movielist.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.Movieslist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <!-- Bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <!-- Bootstrap Icons-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- DataTables -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/dt-1.13.1/b-2.3.3/r-2.4.0/sb-1.4.0/datatables.min.css" />

    <!-- CSS -->
    <link href="../SASS/movielist.css" rel="stylesheet" />
    <link href="../SASS/movielist.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <!-- Page Wrapper -->
        <div class="d-flex" id="wrapper">

            <!-- Sidebar -->
            <div class="side-bar d-flex flex-column p-3" id="sidebar">
                <a href="#" id="logo" class="mb-1">CSBH</a>
                < />
          <ul id="side-bar-nav" class="nav nav-pills flex-column mb-auto">
              <li><a href="Admin.aspx" class="nav-link"><i class="bi bi-speedometer2 me-2 fa-sm"></i><span>Dashboard</span></a></li>
              <li class="nav-item"><a href="MovieList.aspx" class="nav-link active"><i class="bi bi-film me-2 fa-sm"></i><span>Movies</span></a></li>
              <li><a href="Users.aspx" class="nav-link"><i class="bi bi-people me-2 fa-sm"></i><span>Users</span></a></li>
              <li><a href="bookingList.aspx" class="nav-link"><i class="bi bi-ticket-detailed me-2 fa-sm"></i><span>Booking</span></a></li>
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
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                            <a class=" text-decoration-none" href="#" role="button" id="dropDownUser" data-bs-toggle="dropdown" aria-expanded="false">
                                <i src="#" class="rounded-circle me-2 bi bi-person-circle fa-2x" width="32" height="32"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right shadow" aria-labelledby="dropDownUser">
                                <a class="dropdown-item" href="AdminProfile.aspx"><i class="bi bi-person me-2 "></i><span>Profile</span></a>
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
                        <h1 class="h3 mb-0 fw-800 text-black-color">Movies</h1>
                    </div>
                    <!--Datatable-->
                    <div class="card shadow">
                        <div class="card-body">
                            <div class="table-responsive">
                                <button type="button" class="btn btn-primary btn--add-movie" data-bs-toggle="modal" data-bs-target="#addModal">Add Movie</button>
                                <table id="table_movies" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Movie Name</th>
                                            <th>Language</th>
                                            <th>Duration(Mins)</th>
                                            <th>Genre</th>
                                            <th>Release Date</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                        </div>

                    </div>
                    <!--ModalDelete-->
                    <div class="modal fade" data-bs-backdrop="static" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="deleteModalLabel">Delete Movie?</h5>
                                    <button type="button" class="btn-close btn-danger" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Are you sure you want to delete this movie? 
                        <div class="modal__user">
                            Movie:
                            <asp:Label ID="SelectedMovie" runat="server" ClientIDMode="Static"></asp:Label>
                        </div>
                                    <div class="modal__id">
                                        <input id="hdnLabelId" type="hidden" runat="server" clientidmode="Static" />

                                        Id:
                                  <asp:Label ID="SelectedMovieId" runat="server" CientIDMode="Static"></asp:Label>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <asp:Button ID="SubmitModalDelete" type="button" runat="server" CssClass="btn btn-danger" Text="Delete" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--ModalEdit-->
                    <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="editModalLabel">Edit Movie</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">

                                    <div class="container-fluid pb-3">

                                        <div class="row">
                                            <div class="col-md-12 p-0">
                                                <p>Movie name</p>
                                                <asp:TextBox ID="EditName" CssClass="col-md-12 p-0" ValidationGroup="editValidation" runat="server" CientIDMode="Static" autocomplete="off"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row mt-1">
                                            <div class="col-md-6 ps-0">
                                                <p>Language</p>
                                                <asp:TextBox ID="EditLang" CssClass="col-md-12" ValidationGroup="editValidation" runat="server" CientIDMode="Static" autocomplete="off"></asp:TextBox>
                                            </div>

                                            <div class="col-md-6 pe-0">
                                                <p>Duration</p>
                                                <asp:TextBox ID="EditDuration" CssClass="col-md-12" runat="server" ValidationGroup="editValidation" TextMode="Number" CientIDMode="Static" autocomplete="off"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row mt-1">
                                            <div class="col-md-6 ps-0">
                                                <p>Genre</p>
                                                <asp:TextBox ID="EditGenre" CssClass="col-md-12" runat="server" ValidationGroup="editValidation" CientIDMode="Static" autocomplete="off"></asp:TextBox>
                                            </div>

                                            <div class="col-md-6 pe-0">
                                                <p>Release Date</p>
                                                <asp:TextBox ID="EditDate" CssClass="col-md-12" runat="server" TextMode="Date" ValidationGroup="editValidation" CientIDMode="Static" autocomplete="off"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:RequiredFieldValidator ControlToValidate="EditName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Invalid Input" ValidationGroup="editValidation" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <asp:Button ID="SubmitModalEdit" type="button" runat="server" CssClass="btn btn-primary" Text="Save" ValidationGroup="editValidation" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--ModalAdd-->
                    <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="addModalLabel">Add Movie</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>


                                <div class="modal-body">

                                    <div class="container-fluid pb-3">

                                        <div class="row">
                                            <div class="col-md-12 p-0">
                                                <p>Movie name</p>
                                                <asp:TextBox ID="AddName" CssClass="col-md-12 p-0" runat="server" CientIDMode="Static" ValidationGroup="addValidation" autocomplete="off"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row mt-1">
                                            <div class="col-md-6 ps-0">
                                                <p>Language</p>
                                                <asp:TextBox ID="AddLang" CssClass="col-md-12" runat="server" CientIDMode="Static" ValidationGroup="addValidation" autocomplete="off"></asp:TextBox>
                                            </div>

                                            <div class="col-md-6 pe-0">
                                                <p>Duration</p>
                                                <asp:TextBox ID="AddDuration" CssClass="col-md-12" runat="server" TextMode="Number" CientIDMode="Static" ValidationGroup="addValidation" autocomplete="off"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row mt-1">
                                            <div class="col-md-6 ps-0">
                                                <p>Genre</p>
                                                <asp:TextBox ID="AddGenre" CssClass="col-md-12" runat="server" CientIDMode="Static" ValidationGroup="addValidation" autocomplete="off"></asp:TextBox>
                                            </div>

                                            <div class="col-md-6 pe-0">
                                                <p>Release Date</p>
                                                <asp:TextBox ID="AddDate" CssClass="col-md-12" runat="server" TextMode="Date" CientIDMode="Static" ValidationGroup="addValidation" autocomplete="off"></asp:TextBox>
                                            </div>
                                        </div>


                                    </div>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="AddName" runat="server" ErrorMessage="Invalid Input" ValidationGroup="addValidation" CssClass="text-danger"></asp:RequiredFieldValidator>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <asp:Button ID="SubmitModalAdd" type="button" runat="server" CssClass="btn btn-primary" ValidationGroup="addValidation" Text="Add" />
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
    <!-- Sidebar toggle -->
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

    <!-- Jquery script-->
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

    <!-- Datatables script -->
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs5/dt-1.13.1/b-2.3.3/r-2.4.0/sb-1.4.0/datatables.min.js"></script>
    <!-- insert JSON to table-->
    <script type="text/javascript">
        $(document).ready(function () {
            $.ajax({

                url: 'UsersService.asmx/GetMovies',
                method: 'post',
                dataType: 'json',
                success: function (data) {
                    $('#table_movies').DataTable({
                        data: data,
                        columns: [
                            { 'data': 'movie_id' },
                            { 'data': 'movie_name' },
                            { 'data': 'movie_language' },
                            { 'data': 'movie_duration' },
                            { 'data': 'movie_type' },
                            {
                                'data': 'movie_release_date',
                                'render': function (jsonDate) {
                                    const date = new Date(parseInt(jsonDate.substr(6)))
                                    const month = date.getMonth() + 1
                                    return month + "/" + date.getDate() + "/" + date.getFullYear()
                                }
                            },
                            {
                                'data': null,
                                'render': function (data, type, row) {
                                    return '<button type="button" data-id="' + row['movie_id'] + '" data-movie="' + row['movie_name'] + '" data-lang="' + row['movie_language'] + '" data-duration="' + row['movie_duration'] + '" data-genre="' + row['movie_type'] + '" data-date="' + row['movie_release_date'] + '" class="btn btn-secondary me-2" onclick="EditModal(event)" data-bs-toggle="modal" data-bs-target="#editModal">Edit</button>' +

                                        '<button type="button" data-id="' + row['movie_id'] + '" data-movie="' + row['movie_name'] + '"  class="btn btn-danger" onclick="InsertToModal(event)"  data-bs-toggle="modal" data-bs-target="#deleteModal">Delete</button>'
                                        ;
                                }

                            }

                        ],
                        "lengthChange": false,
                        responsive: true
                    })
                }
            })
        })

        function InsertToModal(e) {
            const movie = document.getElementById('<%= SelectedMovie.ClientID %>');
            const id = document.getElementById('SelectedMovieId');
            movie.innerHTML = e.target.getAttribute('data-movie');
            id.innerHTML = e.target.getAttribute('data-id');

            document.getElementById('<%= hdnLabelId.ClientID %>').value = e.target.getAttribute('data-id');

            console.log(movie);
            console.log(id);
        }

        function EditModal(e) {


            document.getElementById('<%= hdnLabelId.ClientID %>').value = e.target.getAttribute('data-id');
            document.getElementById('<%= EditName.ClientID %>').value = e.target.getAttribute('data-movie');
            document.getElementById('<%= EditLang.ClientID %>').value = e.target.getAttribute('data-lang');
            document.getElementById('<%= EditDuration.ClientID %>').value = e.target.getAttribute('data-duration');
            document.getElementById('<%= EditGenre.ClientID %>').value = e.target.getAttribute('data-genre');
        }


    </script>
</body>
</html>
