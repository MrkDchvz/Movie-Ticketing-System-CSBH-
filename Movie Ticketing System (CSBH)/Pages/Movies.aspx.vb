Imports System.Data.SqlClient
Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("username") = Nothing Then
            Response.Redirect("login.aspx")
        Else
            BookingAccount.Text = Session("username")
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

    Private Sub SubmitBooking_Click(sender As Object, e As EventArgs) Handles SubmitBooking.Click
        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim checkMovie As String = "SELECT * FROM movies WHERE movie_name = '" & HdnLabelName.Value & "'"
        Using con As New SqlConnection(conString)
            Dim movieId As Integer
            Dim ticketCount As Integer
            Using cmd As New SqlCommand(checkMovie)
                cmd.Connection = con
                Using sa As New SqlDataAdapter(cmd)
                    Dim dt As New DataTable
                    sa.Fill(dt)
                    If dt.Rows.Count > 0 Then
                        For Each row In dt.Rows
                            movieId = row("movie_id")
                            ticketCount = row("movie_tickets")
                        Next

                        Dim addBooking As String = "INSERT INTO bookings(booking_date, movie_id, user_id)
                                        VALUES ('" & HdnLabelDate.Value & "', '" & movieId & "', '" & Session("id") & "');"

                        Using cmd1 As New SqlCommand(addBooking)
                            cmd1.Connection = con
                            con.Open()
                            cmd1.ExecuteNonQuery()
                        End Using



                    Else
                        Response.Write("<script>alert('Error: Movie not found')</script>")
                    End If
                End Using

            End Using
        End Using
    End Sub
End Class