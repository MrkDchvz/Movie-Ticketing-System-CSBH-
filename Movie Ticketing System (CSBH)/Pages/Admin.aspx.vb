Imports System.Data.SqlClient
Public Class Admin
    Inherits System.Web.UI.Page
    Dim cs As String = ConfigurationManager.ConnectionStrings("MTDB").ConnectionString
    Private Sub Admin_Init(sender As Object, e As EventArgs) Handles Me.Init
        If Session("username") = Nothing Then
            Response.Redirect("login.aspx")
        End If

        Using con As New SqlConnection(cs)

            con.Open()

            Dim sqlBookings As String = "SELECT booking_id FROM bookings"
            Dim sqlUsers As String = "SELECT user_id FROM users WHERE rank = 1"

            Using SqlCommand As New SqlCommand(sqlBookings, con)

                Using sa As New SqlDataAdapter(SqlCommand)
                    Dim dt As New DataTable
                    sa.Fill(dt)
                    TxtBookings.Text = dt.Rows.Count.ToString
                End Using
            End Using

            Using Sqlcommand As New SqlCommand(sqlUsers, con)

                Using sa As New SqlDataAdapter(Sqlcommand)
                    Dim dt As New DataTable
                    sa.Fill(dt)
                    TxtUsers.Text = dt.Rows.Count.ToString
                End Using

            End Using

        End Using


    End Sub


    Protected Sub LogoutButton_Click(sender As Object, e As EventArgs) Handles logoutButton.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Remove("Username")
        Session.Abandon()
        Response.Redirect("Login.aspx")

    End Sub
End Class