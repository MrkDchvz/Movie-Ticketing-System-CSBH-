Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Notpostback()
        If Session("username") IsNot Nothing Then
            If Session("rank") = "1" Then
                Response.Redirect("~/user.aspx")
            ElseIf Session("rank") = "2" Then
                Response.Redirect("~/admin.aspx")
            End If
        End If
    End Sub

    Private Sub Notpostback()
        If Not Page.IsPostBack Then
            txterror.Text = ""
        End If
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim query As String = "SELECT * FROM users WHERE username = '" & txtuser.Text & "' AND password = '" & txtpass.Value.ToString & "';"
        Dim cmd As New SqlCommand(query, con)
        Dim sa As New SqlDataAdapter(cmd)
        Dim dt As New DataTable
        sa.Fill(dt)

        If dt.Rows.Count > 0 Then 'Check if pass and username is correct'
            For Each row In dt.Rows
                Session("fullname") = row("fullname").ToString
                Session("username") = row("username").ToString
                Session("password") = row("password").ToString
                Session("email") = row("email").ToString
                Session("phone_num") = row("phone_num").ToString
                Session("rank") = row("rank").ToString
                Session("gender") = row("gender").ToString
            Next

            If Session("rank") = "1" Then
                Response.Redirect("~/user.aspx")
            ElseIf Session("rank") = "2" Then
                Response.Redirect("~/admin.aspx")
            End If
        Else
            txterror.Text = "Invalid username or password "
        End If








    End Sub
End Class