Imports System.ComponentModel
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Script.Serialization

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
<System.Web.Script.Services.ScriptService()>
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")>
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)>
<ToolboxItem(False)>
Public Class UsersService
    Inherits System.Web.Services.WebService

    <WebMethod()>
    Public Sub GetUsers()
        Dim cs As String = ConfigurationManager.ConnectionStrings("MTDB").ConnectionString
        Dim users As List(Of usersClass) = New List(Of usersClass)()
        Using con As New SqlConnection(cs)
            Dim cmd As SqlCommand = New SqlCommand("spGetUsers", con)
            cmd.CommandType = CommandType.StoredProcedure
            con.Open()
            Dim rdr As SqlDataReader = cmd.ExecuteReader()

            While (rdr.Read())
                Dim user As usersClass = New usersClass()
                user.fullName = rdr("fullname").ToString()
                user.userName = rdr("username").ToString()
                user.email = rdr("email").ToString()
                user.phone_num = rdr("phone_num").ToString()
                user.gender = rdr("gender").ToString()
                users.Add(user)

            End While

        End Using

        Dim js As JavaScriptSerializer = New JavaScriptSerializer()
        Context.Response.Write(js.Serialize(users))
    End Sub

End Class