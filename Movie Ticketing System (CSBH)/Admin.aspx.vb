Public Class Admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("username") = Nothing Then
            Response.Redirect("~/login.aspx")
        End If

        txtusername.Text = Session("username").ToString
    End Sub
    Protected Sub btnLogout2_Click(sender As Object, e As EventArgs) Handles btnLogout2.Click
        Session.RemoveAll()
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub

    Protected Sub btnLogout1_Click(sender As Object, e As EventArgs) Handles btnLogout1.Click
        Session.RemoveAll()
        Session.Abandon()
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub
End Class