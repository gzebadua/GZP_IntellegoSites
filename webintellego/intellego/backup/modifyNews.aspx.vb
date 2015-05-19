Public Partial Class modifyNews
    Inherits System.Web.UI.Page

    Dim chequeo As String = ""

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If uHaveRight(Me) = False Then
            Response.Redirect("index.aspx")
        End If

        If Not IsPostBack Then

            If Request.QueryString("target") = "" Or Request.QueryString("target") Is Nothing Then
                Response.Redirect("displayNews.aspx")
            Else

                Try

                    chequeo = getSQLQueryAsDataset("SELECT inewsid FROM news WHERE inewsid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)

                    If chequeo <> "" Then

                        txtTitle.Text = getSQLQueryAsDataset("SELECT snewstitle FROM news WHERE inewsid = " & chequeo).Tables(0).Rows(0).Item(0)
                        txtDescription.Text = getSQLQueryAsDataset("SELECT snewscontent FROM news WHERE inewsid = " & chequeo).Tables(0).Rows(0).Item(0)

                    Else
                        Response.Redirect("displayNews.aspx")
                    End If

                Catch ex As Exception

                    Response.Redirect("displayNews.aspx")

                End Try

            End If

        End If

    End Sub

    Private Sub btnLogout_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Response.Redirect("index.aspx")
    End Sub


    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click

        Dim valida1 As Boolean

        txtTitle.Text = txtTitle.Text.Trim()
        txtTitle.Text = txtTitle.Text.Replace("'", "")
        txtTitle.Text = txtTitle.Text.Replace("|", "")
        txtDescription.Text = txtDescription.Text.Trim()
        txtDescription.Text = txtDescription.Text.Replace("'", "")
        txtDescription.Text = txtDescription.Text.Replace("|", "")

        lblErr1.Visible = False

        valida1 = executeSQLQuery("UPDATE news SET snewstitle= '" & txtTitle.Text & "', snewscontent ='" & txtDescription.Text & "' WHERE inewsid =" & Request.QueryString("target"))

        If Not valida1 Then
            lblErr1.Visible = True
            Exit Sub
        End If

        Response.Redirect("displayNews.aspx")

    End Sub


    Private Sub btnCancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Response.Redirect("displayNews.aspx")
    End Sub

End Class