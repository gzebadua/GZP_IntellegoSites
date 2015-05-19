Public Partial Class fotos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            cleanSession(Me)
        End If

    End Sub

    Sub cleanSession(ByVal page As System.Web.UI.Page)

        page.Session.Clear()

    End Sub

    Private Sub btnLogin_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLogin.Click

        lblWrongUP.Visible = False

        txtUsername.Text = txtUsername.Text.Trim()
        txtUsername.Text = txtUsername.Text.Replace("'", "")
        txtUsername.Text = txtUsername.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")
        txtUsername.Text = txtUsername.Text.ToLower
        txtPassword.Text = txtPassword.Text.Trim()
        txtPassword.Text = txtPassword.Text.Replace("'", "")
        txtPassword.Text = txtPassword.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")

        If txtUsername.Text = "admin01" And txtPassword.Text = "conferencias" Then
            Page.Session("name") = "admin01"
            Response.Redirect("adminMenu.aspx")
            Exit Sub
        End If

        If txtUsername.Text = "admin02" And txtPassword.Text = "conferencias" Then
            Page.Session("name") = "admin02"
            Response.Redirect("adminMenu.aspx")
            Exit Sub
        End If

        If txtUsername.Text = "invitado" And txtPassword.Text = "invitado" Then
            Page.Session("name") = "invitado"
            Response.Redirect("menu.aspx")
            Exit Sub
        End If

        lblWrongUP.Visible = True

    End Sub

End Class