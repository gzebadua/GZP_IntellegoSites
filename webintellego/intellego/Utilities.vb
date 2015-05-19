Imports Microsoft.VisualBasic
Imports System.Net.NetworkInformation
Imports MySql.Data.MySqlClient
Imports System.Security.Cryptography
Imports System.Data
Imports System.Net.Mail


Module Utilities


    '========================================================================================
    'SQL Connections


    Dim servidor As String = "webintellego.db.7462515.hostedresource.com"
    Dim usuario As String = "webintellego"
    Dim password As String = "MemoZebadua4"
    Dim database As String = "webintellego"


    Public Function StringConnection() As String

        Return "Server=" & servidor & ";Database=" & database & ";Port=3306;" & _
        "Uid=" & usuario & ";Pwd=" & password & ";Connect Timeout=60;"

    End Function


    Function uHaveRight(ByVal page As System.Web.UI.Page)

        'Dim path() As String = page.Request.FilePath.Split("/")
        'Dim nombrepagina As String = path(path.Length - 1)

        If page.Session("name") = "admin01" Or page.Session("name") = "admin02" Then
            Return True
        Else
            Return False
        End If

    End Function


    Function GuestHasRight(ByVal page As System.Web.UI.Page)

        'Dim path() As String = page.Request.FilePath.Split("/")
        'Dim nombrepagina As String = path(path.Length - 1)

        If page.Session("name") = "invitado" Then
            Return True
        Else
            Return False
        End If

    End Function


    Public Function getSQLQueryAsDataset(ByVal sqlQuery As String) As DataSet

        Dim results As New DataSet

        Try

            Dim objcon As New MySqlConnection(StringConnection())

            Dim objcmd As New MySqlDataAdapter(sqlQuery, objcon)

            objcmd.Fill(results)

        Catch
            Return Nothing
        End Try

        Return results

    End Function


    Public Function executeSQLQuery(ByVal query As String) As Boolean

        Try

            Dim objCon As New MySqlConnection(StringConnection())

            objCon.Open()

            Dim objCmd As New MySqlCommand(query, objCon)

            objCmd.ExecuteNonQuery()

        Catch
            Return False
        End Try

        Return True

    End Function


    Public Function getMySQLDate() As String

        Return getSQLQueryAsDataset("SELECT DATE_FORMAT(now(),'%Y%m%d')").Tables(0).Rows(0).Item(0)

    End Function


    Public Function getMySQLTime() As String

        Return getSQLQueryAsDataset("SELECT DATE_FORMAT(now(),'%H:%i:%s')").Tables(0).Rows(0).Item(0)

    End Function


    Public Function avoidMySQLInjections(ByVal texto As String) As String

        Return "'" & texto.Replace("'", "''") & "'"

    End Function


    Function doDatagridDatabind(ByVal query As String)

        Dim objCon As New MySqlConnection(StringConnection())

        Dim objDA As New MySqlDataAdapter(query, objCon)

        Dim objDS As New DataSet

        objDA.Fill(objDS, "Random")

        objCon.Close()

        Return objDS

    End Function

End Module
