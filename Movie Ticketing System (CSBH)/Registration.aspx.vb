Imports System.Data.SqlClient
Public Class Registration
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Function gender() As String
        If radio1.Checked Then
            Return radio1.Value
        ElseIf radio2.Checked Then
            Return radio2.Value
        ElseIf radio3.Checked Then
            Return radio3.Value

        End If
    End Function

    Protected Sub btnregister_Click(sender As Object, e As EventArgs) Handles btnregister.Click
        Try
            Dim gndr As String = gender()
            Dim strquery As String = "INSERT INTO users VALUES('" & txtfullname.Text & "', '" & txtusername.Text & "', '" & txtpass.Value & "', '" & txtemail.Text & "', '" & txtnum.Text & "', '" & 1 & "', '" & gndr.ToLower & "' );"
            con.Open()
            Dim cmd As New SqlCommand(strquery, con)
            cmd.ExecuteNonQuery()
            con.Close()

        Catch ex As Exception
            txterror.Text = "Invalid Input"
        End Try

    End Sub
End Class