Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim cs As String = ConfigurationManager.ConnectionStrings("MTDB").ConnectionString
    Dim con As New SqlConnection(cs)

    Private Sub WebForm1_Init(sender As Object, e As EventArgs) Handles Me.Init
        If Session("username") IsNot Nothing Then
            If Session("rank") = "1" Then
                Response.Redirect("~/home.aspx")
            ElseIf Session("rank") = "2" Then
                Response.Redirect("~/dashboard/admin.aspx")
            End If
        End If
        Notpostback()
    End Sub




    Private Sub Notpostback()
        If Not Page.IsPostBack Then
            loginError.Text = ""
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim query As String = "SELECT * FROM users WHERE username = '" & loginUsername.Text & "' AND password = '" & loginPassword.Text & "';"
        Dim cmd As New SqlCommand(query, con)
        Dim sa As New SqlDataAdapter(cmd)
        Dim dt As New DataTable
        sa.Fill(dt)

        If dt.Rows.Count > 0 Then 'Check if pass and username is correct'
            For Each row In dt.Rows
                Session("username") = row("username").ToString
                Session("email") = row("email").ToString
                Session("rank") = row("rank").ToString
            Next

            If Session("rank") = "1" Then
                Response.Redirect("~/home.aspx")
            ElseIf Session("rank") = "2" Then
                Response.Redirect("~/dashboard/admin.aspx")
            End If
        Else
            loginError.Text = "Invalid username or password"
        End If

    End Sub

End Class