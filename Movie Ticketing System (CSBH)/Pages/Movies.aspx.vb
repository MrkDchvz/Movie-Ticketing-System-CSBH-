Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("username") = Nothing Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub LogoutButtonMobile_Click(sender As Object, e As EventArgs) Handles logoutButtonMobile.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("Login.aspx")

    End Sub

    Protected Sub LogoutButtonDesktop_Click(sender As Object, e As EventArgs) Handles LogoutButtonDesktop.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("Login.aspx")

    End Sub
End Class