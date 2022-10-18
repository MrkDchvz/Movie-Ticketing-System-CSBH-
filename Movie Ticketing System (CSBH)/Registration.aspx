<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registration.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--Stylesheet-->
    <link href="CSS/registration.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="container">
        <div class="title">Sign up</div>
        <form id="form1" runat="server">
            <div class="user">

                <div class="user__input-box">
                    <span class="user__details">Full name</span>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input" required></asp:TextBox>
                </div>

                <div class="user__input-box">
                    <span class="user__details">Username</span>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="input" required></asp:TextBox>
                </div>

                 <div class="user__input-box">
                    <span class="user__details">Email</span>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="input" required></asp:TextBox>
                </div>

                <div class="user__input-box">
                    <span class="user__details">Phone Number</span>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="input" required></asp:TextBox>
                </div>

                <div class="user__input-box">
                    <span class="user__details">Password</span>
                    <input type="text"  class="input" required />
                </div>

                <div class="user__input-box">
                    <span class="user__details">Confirm Password</span>
                    <input type="text" class="input" required />
                </div>

                <div class="user__input-box--gender-details">
                    <span class="user__details--gender-title">Gender</span>
                    <input type="radio" id="radio1" runat="server" name="radiogroup" />
                    <input type="radio" id="radio2" runat="server" name="radiogroup" />
                    <input type="radio" id="radio3" runat="server" name="radiogroup" />
                    <div class="user__details--category">
                        <label for="radio1">
                            <span class="user__input-box--radio dot-one"></span>
                            <span class="user_details--gender">Male</span>
                        </label>
                        <label for="radio2">
                            <span class="user__input-box--radio dot-two"></span>
                            <span class="user_details--gender">Female</span>
                        </label>
                        <label for="radio3">
                         <span class="user__input-box--radio dot-three"></span>
                         <span class="user_details--gender">Prefer not to say</span>
                        </label>
                    </div>
                 </div> <!-- END gender details -->
            </div><!-- END User -->
            <div class="user__input-box--button">
                     <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Create Account" />
                     <asp:HyperLink ID="backlogin" runat="server" CssClass="signup" NavigateUrl="~/Login.aspx">Have an account? Sign in</asp:HyperLink>
                 </div>
        </form> <!-- END form -->
    </div> <!-- END container -->
</body>
</html>
