<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registration.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.Registration" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!--Stylesheet-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="../SASS/registration.css" rel="stylesheet" />
    <link href="../SASS/registration.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div class="login">
            <div class="login__form">
                <div class="login__logo">
                    <span class="login__logo--icon"><i class="fa-solid fa-bug-slash"></i></span>
                    <span class="login__logo--title">Sign Up</span>
                </div>
                <div class="login__credentials">
                    <div class="login__input-container">
                        <asp:TextBox ID="loginEmail" CssClass="login__input login__input--email" autocomplete="off" runat="server" required></asp:TextBox>
                        <label for="loginUsername">Email</label>
                    </div>

                    <div class="login__input-container">
                        <asp:TextBox ID="loginUsername" CssClass="login__input login__input--username" autocomplete="off" runat="server" required></asp:TextBox>
                        <label for="loginUsername">Username</label>
                    </div>
                    <div class="login__input-container">
                        <asp:TextBox ID="loginPassword" CssClass="login__input login__input--password" autocomplete="off" runat="server" TextMode="Password" required></asp:TextBox>
                        <label for="loginPassword">Passsword</label>
                        <asp:Label ID="loginError" runat="server" Text="" CssClass="login__error"></asp:Label>
                        <asp:RegularExpressionValidator  ID="regexEmailValid" runat="server"
                            Cssclass="login__error"
                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="loginEmail" 
                            ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <asp:Button ID="Button1" runat="server" CssClass="login__button" Text="Sign up" />
                <a class="login__link" href="Login.aspx">Have an account? <span class="grey-color">Login here.</span></a>

            </div>
            <div class="login__empty">
                <div class="login__icon--both"><i class="fa-solid fa-bug-slash"></i><span>CBSH</span></div>
                <div class="login__description">
                    <span class="login__heading">Don't have an account?</span>
                    <p class="login__subheading">Register to access all the features of our service.
                        <span class="line-break"></span>Book the movies you love. It's easy!</p>

                </div>
            </div>
        </div>
    </form>
    <!-- END form -->
</body>
</html>
