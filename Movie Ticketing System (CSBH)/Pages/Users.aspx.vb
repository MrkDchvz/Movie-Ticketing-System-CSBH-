Imports System.Data.SqlClient
Public Class WebForm3
    Inherits System.Web.UI.Page


    Private Sub WebForm3_Init(sender As Object, e As EventArgs) Handles Me.Init
        If Session("username") = Nothing Then
            Response.Redirect("login.aspx")
        End If
    End Sub



    Protected Sub LogoutButton_Click(sender As Object, e As EventArgs) Handles logoutButton.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("login.aspx")
    End Sub

    Private Sub Submitmodal_Click(sender As Object, e As EventArgs) Handles Submitmodal.Click
        Dim user As String = hdnLabelUser.Value
        Dim Id As String = hdnLabelId.Value

        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim changeRank As String = "UPDATE users SET rank = 3 WHERE username ='" & user & "' and user_id = '" & Id & "' "

        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand(changeRank)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
            End Using
        End Using
    End Sub
End Class