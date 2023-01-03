<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UserProfile.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- DataTables -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/dt-1.13.1/b-2.3.3/r-2.4.0/datatables.min.css" />


    <!-- SCSS -->
    <link href="../SASS/UserProfile.css" rel="stylesheet" />
    <link href="../SASS/UserProfile.min.css" rel="stylesheet" />


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid main-container">
            <%-- Navigation Bar --%>
            <header class="navbar">
                <a href="Home.aspx" class="navbar__logo">
                    <i class="fa-solid fa-bug-slash navbar__logo--icon"></i>
                    <span class="navbar__logo--title">CSBH</span>

                </a>
                <nav class="navbar--desktop">
                    <ul class="navbar--desktop__list">
                        <li class="navbar--desktop__item"><a href="Home.aspx" class="navbar--desktop__link link-style">Home</a></li>
                        <li class="navbar--desktop__item"><a href="Movies.aspx" class=" navbar--desktop__link link-style">Movies</a></li>
                        <li class="navbar--desktop__item active-link"><a href="UserProfile.aspx" class=" navbar--desktop__link link-style">Profile</a></li>
                        <li class="navbar--desktop__item">
                            <asp:LinkButton ID="logoutButtonDesktop" CssClass="navbar--desktop__link link-style text-danger" runat="server">Logout</asp:LinkButton></li>
                    </ul>
                </nav>
                <%-- Hamburger Bar --%>
                <a href="#" type="button" class="hamburger">
                    <div class="hamburger__bar"></div>
                </a>
            </header>
            <%-- Navigation Bar Mobile --%>
            <nav class="navbar--mobile">
                <ul class="navbar--mobile__list" role="list">
                    <li class="navbar--mobile__item"><a href="Home.aspx" class="navbar--mobile__link link-style">Home</a></li>
                    <li class="navbar--mobile__item"><a href="Movies.aspx" class="navbar--mobile__link link-style">Movies</a></li>
                    <li class="navbar--desktop__item"><a href="UserProfile.aspx" class=" navbar--mobile__link link-style">Profile</a></li>
                    <li class="navbar--mobile__item">
                        <asp:LinkButton ID="logoutButtonMobile" CssClass="navbar--mobile__link link-style link-style--danger text-danger" runat="server">Logout</asp:LinkButton></li>
                </ul>
            </nav>

            <div class="container-fluid content-container">
                <h1 class="content-heading">Settings</h1>
                <div class="account-container">
                    <div class="settings-container">
                        <div class="account-settings">
                            <h3 class="account--settings-heading">Account</h3>
                            <div class="card card--account">

                                <div class="card-body account__main-section">
                                    <div class="card--username">

                                        <h4 class="account__section-title">Username</h4>
                                        <asp:TextBox ID="InputAccountUsername" CssClass="textbox textbox--account" runat="server" placeholder="Enter your username" autocomplete="off"></asp:TextBox>
                                        <asp:HiddenField ID="HiddenUsername" ClientIDMode="Static" runat="server" />
                                        <asp:Button ID="SubmitUsername" runat="server" Text="Save Username" CssClass="account__btn account__btn--username btn btn-primary" />

                                    </div>

                                    <div class="account-section account-section--password">

                                        <h4 class="account__section-title">Password</h4>
                                        <asp:TextBox ID="InputCurrentPassword" placeholder="Current Password" runat="server" CssClass="textbox" TextMode="Password" Oninput="PasswordInputEvent()"></asp:TextBox>
                                        <asp:Label ID="CurrentPassError" runat="server" Text="" CssClass="text-danger"></asp:Label>
                                        <asp:TextBox ID="InputNewPassword" placeholder="New Password" runat="server" CssClass="textbox" TextMode="Password" Oninput="PasswordInputEvent()"></asp:TextBox>
                                        <asp:TextBox ID="InputConfirmPassword" placeholder="Confirm Password" runat="server" CssClass="textbox" TextMode="Password" Oninput="PasswordInputEvent()"></asp:TextBox>
                                        <asp:CompareValidator ID="PasswordValidation" runat="server" ErrorMessage="Password doesn't match" ControlToValidate="InputNewPassword" ControlToCompare="InputConfirmPassword" CssClass="validation text-danger d-block"></asp:CompareValidator>
                                        <asp:Button ID="SubmitPassword" runat="server" Text="Save Password" CssClass="account__btn account__btn--password btn btn-primary" />


                                    </div>

                                    <div class="section section--email">

                                        <h4 class="account__section-title">Email</h4>
                                        <asp:TextBox ID="InputEmail" placeholder="Enter your Email" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:HiddenField ID="HiddenEmail" ClientIDMode="Static" runat="server" />
                                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server"
                                            CssClass="validation text-danger d-block"
                                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="InputEmail"
                                            ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                                        <asp:Button ID="SubmitEmail" runat="server" Text="Save Email" CssClass="account__btn account__btn--email btn btn-primary" />

                                    </div>
                                    <div class="section section-booking">
                                        <h4 class="account__section-title">Bookings</h4>
                                        <p class="account__section-subtitle my-1">View all your bookings</p>
                                        <button id="ViewBooking" type="button" class="account_btn account_btn--booking btn btn-primary" data-bs-toggle="modal" data-bs-target="#BookingModal">Show Bookings</button>
                                        <%-- Booking Modal --%>
                                        <div class="modal fade" id="BookingModal" tabindex="-1" aria-labelledby="BookingModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header border-0">
                                                        <h5 class="modal-title" id="BookingModalLabel">Bookings</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body modal-body--grid ">
                                                        <div class="table-responsive">
                                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table table-striped dt-responsive nowrap w-100">
                                                                <Columns>
                                                                    <asp:BoundField DataField="movie_name" HeaderText="Movie Name" />
                                                                    <asp:BoundField DataField="booking_id" HeaderText="Booking ID" />
                                                                    <asp:BoundField DataField="booking_date" HeaderText="Date Booked" DataFormatString="{0:MM/dd/yyyy}" />



                                                                </Columns>

                                                            </asp:GridView>
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer border-0">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <hr />
                                    <div class="section--delete">

                                        <h4 class="account__section-title text-danger">Delete My Account</h4>
                                        <p class="account__section-subtitle mt-1">Warning! This will permanently delete all your account data.</p>
                                        <button id="IntialDeleteButton" type="button" class="account__btn account__btn--delete btn btn-danger mt-2 " data-bs-toggle="modal" data-bs-target="#DeleteModal">Delete Account</button>
                                        <!-- Delete Confirmation Modal -->
                                        <div class="modal fade" id="DeleteModal" tabindex="-1" aria-labelledby="DeleteModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content text-center">
                                                    <div class="modal-header border-0">
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

                                                    </div>
                                                    <div class="modal-body modal-body--delete">
                                                        <div class="icon-container icon-container--delete">
                                                            <i class=" text-danger x-icon fa-solid fa-xmark"></i>
                                                        </div>
                                                        <h3 class="text-secondary">Are you sure?</h3>
                                                        <p class="text-secondary">Do you really want to delete this account and its records? This proccess can't be undone.</p>
                                                    </div>
                                                    <div class="modal-footer border-0 d-flex justify-content-center">
                                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                        <asp:Button ID="SubmitDelete" runat="server" CssClass="btn btn-danger" Text="Delete" />

                                                    </div>
                                                </div>
                                            </div>
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
    <!-- Jquery script-->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

    <!-- Datatables script -->
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs5/dt-1.13.1/b-2.3.3/r-2.4.0/datatables.min.js"></script>

    <!-- Bookings Table -->
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= GridView1.ClientID %>').DataTable({
                "lengthChange": false,
                "autoWidth": false,
                responsive: true
            });

            $('#BookingModal').on('shown.bs.modal', function (e) {
                $('#<%= GridView1.ClientID %>').DataTable()
                    .columns.adjust()
                    .responsive.recalc();
            })
        })
    </script>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>




    <!-- Navigation Bar -->
    <script>
        const burger = document.querySelector(".hamburger");
        const mobileNav = document.querySelector(".navbar--mobile");
        burger.addEventListener('click', () => {
            burger.classList.toggle('active');
            mobileNav.classList.toggle('active');
        })
    </script>


    <!-------Input Functions-------->
    <!-- Username -->
    <script>
        const submitUsername = document.getElementById('SubmitUsername');
        const usernameTextbox = document.getElementById('InputAccountUsername');
        const prevInput = document.getElementById('<%= HiddenUsername.ClientID %>').value;



        usernameTextbox.addEventListener('input', () => {
            if (usernameTextbox.value != prevInput && usernameTextbox.value.length != 0) {
                submitUsername.classList.add('show');
                usernameTextbox.classList.remove('border-error')
            } else {
                submitUsername.classList.remove('show');
                if (usernameTextbox.value.length == 0) {
                    usernameTextbox.classList.add('border-error')
                }

            }
        })
    </script>
    <!-- Password -->
    <script>
        function PasswordInputEvent() {
            const currentPass = document.getElementById('InputCurrentPassword');
            const newPass = document.getElementById('InputNewPassword');
            const confirmPass = document.getElementById('InputConfirmPassword');
            const submitPass = document.getElementById('SubmitPassword');
            const passValidation = document.getElementById('PasswordValidation');
            if (currentPass.value.length != 0 && newPass.value.length != 0 && confirmPass.value.length != 0 && newPass.value == confirmPass.value) {
                submitPass.classList.add('show');
                passValidation.innerHTML = "";

            } else {
                submitPass.classList.remove('show');
            }
        }
    </script>

    <script>
        const currentPass = document.getElementById('InputCurrentPassword');
        currentPass.addEventListener('change', handler, false);

        function handler() {
            document.getElementById('CurrentPassError').textContent = "";
        }

    </script>
    <!-- Email -->
    <script>
        const email = document.getElementById('InputEmail');
        const submitEmail = document.getElementById('SubmitEmail');
        const prevEmail = document.getElementById('<%= HiddenEmail.ClientID %>').value;
        const reg = /\w+([-+.]\w +)*@\w+([-.]\w +)*\.\w+([-.]\w +)*/;
        console.log(prevEmail);
        email.addEventListener('input', () => {
            if (reg.test(email.value) && email.value != prevEmail) {
                submitEmail.classList.add('show');
                email.classList.remove('border-error');
            } else {
                submitEmail.classList.remove('show');
                if (email.value.length == 0) {
                    email.classList.add('border-error');
                }
            }
        })

    </script>


</body>
</html>
