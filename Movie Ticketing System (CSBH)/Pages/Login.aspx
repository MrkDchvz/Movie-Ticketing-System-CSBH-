<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.WebForm1" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>lOGIN</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="../SASS/login.css" rel="stylesheet" />
    <link href="../SASS/login.min.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="login">
            <div class="login__form">
                <div class="login__logo">
                    <span class="login__logo--icon"><i class="fa-solid fa-bug-slash"></i></span>
                    <span class="login__logo--title">Login</span>
                </div>
                <div class="login__credentials">
                    <div class="login__input-container login__input--username">
                        <asp:TextBox ID="loginUsername" CssClass="login__input" autocomplete="off"  runat="server" required></asp:TextBox>
                        <label for="loginUsername">Username</label>
                    </div>
                    <div class="login__input-container login__input--password">
                        <asp:TextBox ID="loginPassword" CssClass="login__input login__input--password" autocomplete="off"  runat="server" TextMode="Password" required></asp:TextBox>
                        <label for="loginPassword">Passsword</label>
                        <asp:Label ID="loginError" runat="server" Text="" CssClass="login__error"></asp:Label>
                        

                        
                    </div>
                </div>
                <asp:Button ID="Button1" runat="server" CssClass="login__button" Text="Login" />
                <a class="login__link" href="Registration.aspx">Don't have an account? <span class="accent-color">Sign in here.</span></a>

            </div>
            <div class="login__empty">
                <div class="login__icon--both"><i class="fa-solid fa-bug-slash"></i><span>CBSH</span></div>
                <div class="login_description">
                    <span class="login__heading">Welcome Back!</span>
                    <p class="login__subheading">Please, provide login credentials to proceed and have access to all our services.</p>

                </div>
            </div>
        </div>
    </form>
</body>
</html>
