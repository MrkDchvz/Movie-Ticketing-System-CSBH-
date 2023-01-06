<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Users.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.WebForm3" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
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
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/dt-1.13.1/b-2.3.3/r-2.4.0/datatables.min.css" />
    <!-- CSS -->
    <link href="../SASS/users.css" rel="stylesheet" />
    <link href="../SASS/users.min.css" rel="stylesheet" />
   

</head>

<body>
    <form id="form1" runat="server">
        <!-- Page Wrapper -->
      <div class="d-flex" id="wrapper"> 

        <!-- Sidebar -->
        <div class="side-bar d-flex flex-column p-3" id="sidebar">
          <a href="#" id="logo" class="mb-1">CSBH</a>
          <hr />
          <ul id="side-bar-nav" class="nav nav-pills flex-column mb-auto">
            <li><a href="Admin.aspx" class="nav-link"><i class="bi bi-speedometer2 me-2 fa-sm"></i><span>Dashboard</span></a></li>
            <li><a href="MovieList.aspx" class="nav-link"><i class="bi bi-film me-2 fa-sm"></i><span>Movies</span></a></li>
            <li class="nav-item"><a href="Users.aspx" class="nav-link active"><i class="bi bi-people me-2 fa-sm"></i><span>Users</span></a></li>
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
                <a  class=" text-decoration-none" href="#" role="button" id="dropDownUser" data-bs-toggle="dropdown" aria-expanded="false">
                    <i src="#" class="rounded-circle me-2 bi bi-person-circle fa-2x"  width="32" height="32"></i>
                </a>
                <div  class="dropdown-menu dropdown-menu-right shadow" aria-labelledby="dropDownUser">
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
              <h1 class="h3 mb-0 fw-800 text-black-color">Users</h1>
            </div>
              <!--Datatable-->
              <div class="card shadow">
                  <div class="card-body">
                      <div class="table-responsive">
                          <table id="table_users" class="table table-striped">
                              <thead>
                                  <tr>
                                    <th>ID</th>
                                    <th>username</th>
                                    <th>email</th>
                                    <th>Edit</th>
                                  </tr>
                              </thead>
                          </table>
                      </div>
                  </div>

              </div>

 
          </div>
            <!-- Modal -->
         <div class="modal fade text-black-color" data-bs-backdrop="static" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
             <div class="modal-dialog">
                 <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Delete user?</h5>
                         <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                     Are you sure you want to delete this user? 
                        <div class="modal__user">
                            <input id="hdnLabelUser" type="hidden" runat="server" ClientIDMode="Static" />
                           User: <asp:Label ID="SelectedUser" runat="server" ClientIDMode="Static"></asp:Label>
                        </div>
                        <div class="modal__id">
                            <input id="hdnLabelId" type="hidden" runat="server" ClientIDMode="Static" />
                            Id: <asp:Label ID="SelectedUserId"  runat="server" CientIDMode="Static"></asp:Label>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <asp:Button ID="Submitmodal" type="button"  runat="server" CssClass="btn btn-primary" Text="Delete" />
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
                url: 'UsersService.asmx/GetUsers',
                method: 'post',
                dataType: 'json',
                success: function (data) {
                    $('#table_users').DataTable({ 
                        data: data,
                        columns: [
                            { 'data' : 'userId'},
                            { 'data': 'userName' },
                            { 'data': 'email' },
                            {
                                'data': null,
                                'render': function (data, type, row) {
                                    return '<button type="button" data-user="' + row['userName'] + '" data-id="' + row['userId'] + '"  class="btn btn-danger" onclick="InsertToModal(event)" data-bs-toggle="modal" data-bs-target="#exampleModal">Delete</button>';
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
            const user = document.getElementById('<%= SelectedUser.ClientID %>');
            const id = document.getElementById('SelectedUserId');
            user.innerHTML = e.target.getAttribute('data-user');
            id.innerHTML = e.target.getAttribute('data-id');

            document.getElementById('<%= hdnLabelUser.ClientID %>').value = e.target.getAttribute('data-user');
            document.getElementById('<%= hdnLabelId.ClientID %>').value = e.target.getAttribute('data-id');

            console.log(user);
            console.log(id);

        }
    </script>
         
</body>
</html>
