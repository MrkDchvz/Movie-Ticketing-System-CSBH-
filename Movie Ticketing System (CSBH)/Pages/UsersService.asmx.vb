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
        'Open SQL connection and reads rows of users data'
        Dim cs As String = ConfigurationManager.ConnectionStrings("MTDB").ConnectionString
        Dim userList As List(Of UsersClass) = New List(Of UsersClass)()
        Using con As New SqlConnection(cs)
            Dim cmd As SqlCommand = New SqlCommand("spGetUsers", con)
            cmd.CommandType = CommandType.StoredProcedure
            con.Open()
            Dim rdr As SqlDataReader = cmd.ExecuteReader()
            'Creates instances of usersClass and put those instances on UserList List'
            While (rdr.Read())
                Dim user As UsersClass = New UsersClass()
                user.userId = rdr("user_id").ToString()
                user.userName = rdr("username").ToString()
                user.email = rdr("email").ToString()
                userList.Add(user)

            End While

        End Using
        'Converts UsersList List to JSON string'
        Dim js As JavaScriptSerializer = New JavaScriptSerializer()
        Context.Response.Write(js.Serialize(userList))
    End Sub

    <WebMethod()>
    Public Sub GetMovies()
        'Open SQL connection and reads rows of movies data'
        Dim cs As String = ConfigurationManager.ConnectionStrings("MTDB").ConnectionString
        Dim movieList As List(Of MoviesClass) = New List(Of MoviesClass)()
        Using con As New SqlConnection(cs)
            Dim cmd As SqlCommand = New SqlCommand("spGetMovies", con)
            cmd.CommandType = CommandType.StoredProcedure
            con.Open()
            Dim rdr As SqlDataReader = cmd.ExecuteReader()
            'Creates instances of moviesClass and put those instances on moviesList List'
            While (rdr.Read())
                Dim movie As MoviesClass = New MoviesClass()
                movie.movie_id = Convert.ToInt32(rdr("movie_id"))
                movie.movie_name = rdr("movie_name").ToString
                movie.movie_language = rdr("movie_language").ToString
                movie.movie_duration = Convert.ToInt32(rdr("movie_duration"))
                movie.movie_type = rdr("movie_type").ToString
                movie.movie_release_date = Convert.ToDateTime(rdr("movie_release_date"))
                movie.movie_tickets = Convert.ToInt32(rdr("movie_tickets"))

                movieList.Add(movie)

            End While

        End Using
        'Converts moviesList List to JSON string'
        Dim js As JavaScriptSerializer = New JavaScriptSerializer()
        Context.Response.Write(js.Serialize(movieList))
    End Sub

    <WebMethod()>
    Public Sub GetBookings()
        'Open SQL connection and reads rows of bookings data'
        Dim cs As String = ConfigurationManager.ConnectionStrings("MTDB").ConnectionString
        Dim bookingList As List(Of BookingsClass) = New List(Of BookingsClass)()
        Using con As New SqlConnection(cs)
            Dim cmd As SqlCommand = New SqlCommand("spGetBookings", con)
            cmd.CommandType = CommandType.StoredProcedure
            con.Open()
            Dim rdr As SqlDataReader = cmd.ExecuteReader()
            'Creates instances of bookingClass and put those instances on bookinglist List'
            While (rdr.Read())
                Dim booking As BookingsClass = New BookingsClass()
                booking.booking_id = Convert.ToInt32(rdr("booking_id"))
                booking.username = rdr("username").ToString
                booking.movie_name = rdr("movie_name").ToString
                booking.booking_date = Convert.ToDateTime(rdr("booking_date"))
                booking.has_paid = rdr("has_paid").ToString

                bookingList.Add(booking)

            End While

        End Using
        'Converts bookingList List to JSON string'
        Dim js As JavaScriptSerializer = New JavaScriptSerializer()
        Context.Response.Write(js.Serialize(bookingList))
    End Sub


End Class