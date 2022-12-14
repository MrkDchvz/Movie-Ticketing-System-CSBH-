Imports System.Data.SqlClient
Public Class AdminProfile
    Inherits System.Web.UI.Page

    Private Sub AdminProfile_Init(sender As Object, e As EventArgs) Handles Me.Init
        If Session("username") = Nothing Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Private Sub AdminProfile_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            AdminNameInput.Text = Session("username")
        End If

    End Sub

    Private Sub UsernameSubmit_Click(sender As Object, e As EventArgs) Handles UsernameSubmit.Click
        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim updateName As String = "UPDATE users SET username = '" & AdminNameInput.Text & "'  WHERE rank = 2 AND username = '" & Session("username") & "';"
        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand(updateName)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using
    End Sub

    Private Sub PasswordSubmit_Click(sender As Object, e As EventArgs) Handles PasswordSubmit.Click
        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim updatePass As String = "UPDATE users SET password = '" & AdminNewPassInput.Text & "'  WHERE rank = 2 AND username = '" & Session("username") & "';"

        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand(updatePass)
                If AdminCurrentPassInput.Text = Session("password") Then
                    If AdminNewPassInput.Text.Length > 0 And AdminConfirmPassInput.Text.Length > 0 Then
                        cmd.Connection = con
                        con.Open()
                        cmd.ExecuteNonQuery()
                        con.Close()

                        Session.Clear()
                        Session.RemoveAll()
                        Session.Remove("Username")
                        Session.Abandon()
                        Response.Redirect("Login.aspx")
                    End If
                Else
                    TxtError.Text = "Incorrect Password"
                End If
            End Using
        End Using
    End Sub




    'Private Sub SubmitButtonAdmin_Click(sender As Object, e As EventArgs) Handles SubmitButtonAdmin.Click
    '    Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
    '    Dim updateName As String = "UPDATE users SET username = '" & AdminNameInput.Text & "'  WHERE rank = 2 AND username = '" & Session("username") & "';"
    '    Dim updatePass As String = "UPDATE users SET password = '" & AdminNewPassInput.Text & "'  WHERE rank = 2 AND username = '" & Session("username") & "';"

    '    Using con As New SqlConnection(conString)
    '        Using cmd As New SqlCommand(updateName)
    '            Session("username") = AdminNameInput.Text
    '            cmd.Connection = con
    '            con.Open()
    '            cmd.ExecuteNonQuery()
    '            con.Close()
    '        End Using


    '        If AdminNewPassInput.Text.Length > 0 And AdminConfirmPassInput.Text.Length > 0 Then
    '            If AdminCurrentPassInput.Text = Session("password") Then
    '                Using cmd2 As New SqlCommand(updatePass)
    '                    cmd2.Connection = con
    '                    con.Open()
    '                    cmd2.ExecuteNonQuery()
    '                    con.Close()


    '                End Using
    '            Else
    '                TxtError.Text = "Incorrect Password"
    '            End If
    '        End If


    '    End Using




    'End Sub




    Private Sub logoutButton_Click(sender As Object, e As EventArgs) Handles logoutButton.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Remove("Username")
        Session.Abandon()
        Response.Redirect("Login.aspx")
    End Sub


End Class