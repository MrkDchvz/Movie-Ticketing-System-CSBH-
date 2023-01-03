Imports System.Data.SqlClient
Public Class UserProfile
    Inherits System.Web.UI.Page

    Private Sub UserProfile_Init(sender As Object, e As EventArgs) Handles Me.Init
        If Session("username") = Nothing Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            InputAccountUsername.Text = Session("username")
            InputEmail.Text = Session("email")
        End If
        HiddenUsername.Value = Session("username")
        HiddenEmail.Value = Session("email")


        GetBookings()

    End Sub

    Private Sub SubmitUsername_Click(sender As Object, e As EventArgs) Handles SubmitUsername.Click
        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim updateUsername As String = "UPDATE users SET username = '" & InputAccountUsername.Text & "' WHERE rank = 1 AND user_id = '" & Session("id") & "';"
        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand(updateUsername)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                Session("username") = InputAccountUsername.Text
                Response.Redirect(Request.RawUrl)
            End Using
        End Using
    End Sub

    Private Sub SubmitPassword_Click(sender As Object, e As EventArgs) Handles SubmitPassword.Click
        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim updatePassword As String = "UPDATE users SET password = '" & InputNewPassword.Text & "' WHERE rank = 1 AND user_id = '" & Session("id") & "';"
        If InputCurrentPassword.Text = Session("password") Then
            Using con As New SqlConnection(conString)
                Using cmd As New SqlCommand(updatePassword)
                    cmd.Connection = con
                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()

                    Session.Clear()
                    Session.RemoveAll()
                    Session.Remove("Username")
                    Session.Abandon()
                    Response.Redirect("login.aspx")
                End Using
            End Using
        Else
            CurrentPassError.Text = "Incorrect Password"
        End If
    End Sub

    Private Sub SubmitEmail_Click(sender As Object, e As EventArgs) Handles SubmitEmail.Click
        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim updateEmail As String = "UPDATE users SET email='" & InputEmail.Text & "' WHERE rank = 1 AND user_id = '" & Session("id") & "'"
        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand(updateEmail)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                Session("email") = InputEmail.Text
                Response.Redirect(Request.RawUrl)
            End Using
        End Using
    End Sub

    Private Sub SubmitDelete_Click(sender As Object, e As EventArgs) Handles SubmitDelete.Click
        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim deleteAccount As String = "UPDATE users SET rank= 3 WHERE user_id = '" & Session("id") & "'"
        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand(deleteAccount)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()

                Session.RemoveAll()
                Session.Remove("Username")
                Session.Abandon()
                Response.Redirect("login.aspx")
            End Using
        End Using
    End Sub

    Private Sub logoutButtonDesktop_Click(sender As Object, e As EventArgs) Handles logoutButtonDesktop.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Remove("Username")
        Session.Abandon()
        Response.Redirect("Login.aspx")
    End Sub

    Private Sub logoutButtonMobile_Click(sender As Object, e As EventArgs) Handles logoutButtonMobile.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Remove("Username")
        Session.Abandon()
        Response.Redirect("Login.aspx")
    End Sub


    Private Sub GetBookings()
        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim GetUserBooking As String = "SELECT movies.movie_name ,bookings.booking_id,  bookings.booking_date  FROM bookings INNER JOIN users ON bookings.user_id = users.user_id INNER JOIN movies ON bookings.movie_id = movies.movie_id WHERE users.username = '" & Session("username") & "';"
        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand(GetUserBooking)
                cmd.Connection = con
                Using sda As New SqlDataAdapter(cmd)
                    Dim dt As New DataTable
                    sda.Fill(dt)
                    GridView1.DataSource = dt
                    GridView1.DataBind()
                    If GridView1.Rows.Count > 0 Then
                        GridView1.UseAccessibleHeader = True
                        GridView1.HeaderRow.TableSection = TableRowSection.TableHeader
                    End If

                End Using
            End Using
        End Using
    End Sub


End Class