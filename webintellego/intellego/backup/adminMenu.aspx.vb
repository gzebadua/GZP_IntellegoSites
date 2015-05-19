Public Partial Class adminMenu
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If uHaveRight(Me) = False Then
            Response.Redirect("index.aspx")
        End If

    End Sub


    Private Sub btnLogout_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Response.Redirect("index.aspx")
    End Sub


End Class