Public Partial Class displayNews
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If uHaveRight(Me) = False Then
            Response.Redirect("index.aspx")
        End If

        If Not IsPostBack Then
            dgUsers.DataSource = doDatagridDatabind("SELECT * FROM news")
            dgUsers.DataBind()
        End If

    End Sub

    Private Sub btnLogout_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Response.Redirect("index.aspx")
    End Sub

    Private Sub cmdShowAll_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdShowAll.Click

        pnlSearchName.Visible = False

        dgUsers.DataSource = doDatagridDatabind("SELECT * FROM news")
        dgUsers.DataBind()

        cmdShowAll.BackColor = System.Drawing.Color.LightSteelBlue
        cmdShowbyNP.BackColor = System.Drawing.Color.Lavender


    End Sub


    Private Sub cmdGoSearch_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdGoSearch.Click

        txtNP.Text = txtNP.Text.Trim()
        txtNP.Text = txtNP.Text.Replace("'", "")
        txtNP.Text = txtNP.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")

        If txtNP.Text = "" Then
            lblCriteria.Visible = True
            lblCriteria.Text = "Es necesario un criterio para hacer la búsqueda"
            Exit Sub
        End If

        If txtNP.Text <> "" Then
            dgUsers.DataSource = getSQLQueryAsDataset("SELECT n.inewsid, n.snewstitle, n.snewscontent FROM news n WHERE n.snewstitle LIKE '%" & txtNP.Text & "%' OR n.snewscontent LIKE '%" & txtNP.Text & "%'")
            dgUsers.DataBind()
        End If

    End Sub

    Private Sub cmdAddNews_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdAddNews.Click
        Response.Redirect("addNews.aspx")
    End Sub


    Private Sub cmdShowbyNP_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdShowbyNP.Click

        cmdShowAll.BackColor = System.Drawing.Color.Lavender
        cmdShowbyNP.BackColor = System.Drawing.Color.LightSteelBlue
        pnlSearchName.Visible = True

    End Sub


    Private Sub dgUsers_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles dgUsers.ItemCommand

        If e.CommandName = "Edit" Then

            Dim newLoc As String
            newLoc = "modifyNews.aspx?target=" & dgUsers.DataKeys(e.Item.ItemIndex)
            Response.Redirect(newLoc)

        End If

        If e.CommandName = "Delete" Then

            Dim comando As String
            comando = "DELETE FROM news WHERE inewsid = " & dgUsers.DataKeys(e.Item.ItemIndex)

            executeSQLQuery(comando)

            Call cmdShowAll_Click(Me, Nothing)

        End If

    End Sub

End Class