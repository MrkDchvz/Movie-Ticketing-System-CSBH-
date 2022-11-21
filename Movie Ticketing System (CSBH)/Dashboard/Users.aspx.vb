Public Class WebForm3
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("username") = Nothing Then
            Response.Redirect("~/login.aspx")
        End If
    End Sub



    Protected Sub LogoutButton_Click(sender As Object, e As EventArgs) Handles logoutButton.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("~/login.aspx")
    End Sub

    Protected Sub DashboardSessionEnd_Click(sender As Object, e As EventArgs) Handles DashboardSessionEnd.Click
        Response.Redirect("~/Dashboard/Admin.aspx")
    End Sub
End Class