Imports System.Data.SqlClient
Public Class Movieslist
    Inherits System.Web.UI.Page

    Private Sub WebForm4_Init(sender As Object, e As EventArgs) Handles Me.Init
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

    Private Sub SubmitModalDelete_Click(sender As Object, e As EventArgs) Handles SubmitModalDelete.Click
        Dim Id As Integer = Convert.ToInt32(hdnLabelId.Value)


        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim changeStatus As String = "UPDATE movies SET movie_status = 'invalid' WHERE movie_id ='" & Id & "' "

        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand(changeStatus)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
            End Using
        End Using
    End Sub

    Private Sub SubmitModalEdit_Click(sender As Object, e As EventArgs) Handles SubmitModalEdit.Click

        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim editMovie As String = "UPDATE movies SET movie_name = '" & EditName.Text & "', movie_language = '" & EditLang.Text & "', movie_duration = '" & EditDuration.Text & "', movie_type = '" & EditGenre.Text & "', movie_release_date = '" & EditDate.Text & "', movie_tickets = '" & EditTicket.Text & "' WHERE movie_id = '" & hdnLabelId.Value & "'; "

        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand(editMovie)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
            End Using
        End Using
    End Sub

    Private Sub SubmitModalAdd_Click(sender As Object, e As EventArgs) Handles SubmitModalAdd.Click
        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim addMovie As String = "INSERT INTO movies (movie_name, movie_language, movie_duration, movie_type, movie_release_date, movie_tickets) 
                                  VALUES ('" & AddName.Text & "', '" & AddLang.Text & "', '" & AddDuration.Text & "', '" & AddGenre.Text & "', '" & AddDate.Text & "', '" & AddTicket.Text & "');"
        Dim checkMovie As String = "SELECT * FROM movies WHERE movie_name = '" & AddName.Text & "';"
        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand(addMovie)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
            End Using
        End Using
    End Sub
End Class