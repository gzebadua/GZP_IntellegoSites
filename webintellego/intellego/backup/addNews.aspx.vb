Public Partial Class addNews
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If uHaveRight(Me) = False Then
            Response.Redirect("index.aspx")
        End If

        If Not IsPostBack Then

        End If

    End Sub


    Private Sub btnLogout_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Response.Redirect("index.aspx")
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click

        Dim valida1 As Boolean
        Dim identificador As Integer = 0

        txtNewsTitle.Text = txtNewsTitle.Text.Trim()
        txtNewsTitle.Text = txtNewsTitle.Text.Replace("'", "")
        txtNewsTitle.Text = txtNewsTitle.Text.Replace("|", "")
        txtNewsContent.Text = txtNewsContent.Text.Trim()
        txtNewsContent.Text = txtNewsContent.Text.Replace("'", "")
        txtNewsContent.Text = txtNewsContent.Text.Replace("|", "")

        lblErr1.Visible = False

        identificador = getSQLQueryAsDataset("SELECT IF(MAX(inewsid)+1 IS NULL, 1, MAX(inewsid)+1) FROM news").Tables(0).Rows(0).Item(0)
        valida1 = executeSQLQuery("INSERT INTO news VALUES(" & identificador & ", '" & txtNewsTitle.Text & "','" & txtNewsContent.Text & "', " & getMySQLDate() & ", '" & getMySQLTime() & "')")

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