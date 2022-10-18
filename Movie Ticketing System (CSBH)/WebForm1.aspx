<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="Movie_Ticketing_System__CSBH_.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Stylsheet -->
    <link href="CSS/styles.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <div class="promotext promoimg">
                   <!-- <h3>CBSH Cinema</h3>
                    <p>Catch films before everyone.</p> -->
                </div>

                <div class="login">
                    <h4 class="login_header">Welcome Back</h4>
                    <p class="login-subheader"> Please, provide login credentials to proceed and have access to all our services</p>
                    <div class="login_input">
                    
                        <div class="login_input_field">
                             <input type="text" class="login_input--textbox" required />
                             <span></span>
                             <label class="login_input--label">Username</label>
                        </div>
                  
                            <div class="login_input_field">
                                <input class="login_input--textbox" required />
                                <span></span>
                                <label class="login_input--label" >Password</label>
                            </div>
                        <asp:Button ID="Button1" runat="server" Text="login" CssClass="btn" />
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
