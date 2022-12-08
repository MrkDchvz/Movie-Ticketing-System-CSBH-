Imports System.Data.SqlClient
Public Class Registration
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True")
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim conString As String = "Data Source=DESKTOP-62PB5DH;Initial Catalog=Movie_System;Integrated Security=True"
        Dim checkUser As String = "SELECT * FROM users WHERE username = '" & loginUsername.Text.ToLower & "';"
        Dim addUser As String = "INSERT INTO users VALUES( '" & loginUsername.Text & "', '" & loginPassword.Text & "', '" & loginEmail.Text & "', '" & 1 & "');"
        Using con As New SqlConnection(conString)
            Using cmd As New SqlCommand(checkUser)
                Using sa As New SqlDataAdapter()
                    Dim dt As New DataTable
                    cmd.Connection = con
                    sa.SelectCommand = cmd
                    sa.Fill(dt)
                    If dt.Rows.Count > 0 Then
                        loginError.Text = "Username already taken"
                    Else
                        cmd.CommandText = addUser
                        con.Open()
                        cmd.ExecuteNonQuery()
                        loginError.Text = "Account Created!"
                        Response.Redirect("login.aspx")
                    End If

                End Using
            End Using
        End Using

        ' Try

        ' strquery As String = "INSERT INTO users VALUES('" & txtfullname.Text & "', '" & txtusername.Text & "', '" & txtpass.Text & "', '" & txtemail.Text & "', '" & txtnum.Text & "', '" & 1 & "', '" & gndr.ToLower & "' );"


        ' dt As New DataTable

        'If dt.Rows.Count > 0 Then
        '  txterror.Text = "Username already taken"
        ' Else
        '   con.Open()
        ' Dim cmdAdd As New SqlCommand(strquery, con)
        ' cmdAdd.ExecuteNonQuery()
        '  con.Close()

        '  End If



        'cmd.ExecuteNonQuery()

        '  Catch ex As Exception
        'txterror.Text = ex.ToString
        '   End Try

    End Sub
End Class