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
                    <asp:TextBox ID="txtfullname" runat="server" CssClass="input" required></asp:TextBox>
                </div>

                <div class="user__input-box">
                    <span class="user__details">Username</span>
                    <asp:TextBox ID="txtusername" runat="server" CssClass="input" required></asp:TextBox>
                </div>

                 <div class="user__input-box">
                    <span class="user__details">Email</span>
                    <asp:TextBox ID="txtemail" runat="server" CssClass="input" required TextMode="Email"></asp:TextBox>
                </div>

                <div class="user__input-box">
                    <span class="user__details">Phone Number</span>
                    <asp:TextBox ID="txtnum" runat="server" CssClass="input" required></asp:TextBox>
                </div>

                <div class="user__input-box">
                    <span class="user__details">Password</span>
                    <input id="txtpass" type="password" runat="server"  class="input" required />
                </div>

                <div class="user__input-box">
                    <span class="user__details">Confirm Password<br />
                    </span>
                    <input id="txtcpass" type="password" runat="server" class="input" required />
                </div>


                <div class="user__input-box--gender-details">
                    <span class="user__details--gender-title">Gender</span>

                    <input type="radio" value="male" id="radio1" runat="server" name="radiogroup" />
                    <input type="radio" value="female" id="radio2" runat="server" name="radiogroup" />
                    <input type="radio" value="neutral" id="radio3" runat="server" name="radiogroup"/>

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
                     <asp:Button ID="btnregister" CssClass="btn" runat="server" Text="Create Account" />
                     <asp:CompareValidator CssClass="error-message" ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ErrorMessage="Password does not match" Font-Bold="False" ForeColor="#CC3300" ControlToValidate="txtcpass"></asp:CompareValidator>
                     <asp:HyperLink ID="backlogin" runat="server" CssClass="signup" NavigateUrl="~/Login.aspx">Have an account? Sign in</asp:HyperLink>
                     <asp:Label ID="txterror" CssClass="txterror" runat="server" Text=""></asp:Label>
                 </div>
        </form> <!-- END form -->
    </div> <!-- END container -->
</body>
</html>
