Public Partial Class displayAsist
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If uHaveRight(Me) = False Then
            Response.Redirect("index.aspx")
        End If

        If Not IsPostBack Then

            dgUsers.DataSource = doDatagridDatabind("SELECT DISTINCT a.iattendeeid, a.sfullname, a.sfulladdress, a.stelephones, a.semail, a.binvoiceneeded FROM attendees a JOIN assistancerecord ar ON ar.iattendeeid = a.iattendeeid WHERE ar.ieventid = 1")

            Dim lbl As Label
            Dim st As Integer = 0
            Dim actual As String

            dgUsers.DataBind()

            For st = 0 To dgUsers.Items.Count - 1

                actual = dgUsers.Items(st).Cells(4).Text

                lbl = dgUsers.Items(st).FindControl("lblFactura")

                If actual = "1" Then
                    lbl.Text = "S&iacute;"
                Else
                    lbl.Text = "No"
                End If

            Next

        End If

    End Sub

    Private Sub btnLogout_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLogout.Click
        Response.Redirect("index.aspx")
    End Sub

    Private Sub cmdShowAll_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdShowAll.Click

        pnlSearchName.Visible = False

        dgUsers.DataSource = doDatagridDatabind("SELECT DISTINCT a.iattendeeid, a.sfullname, a.sfulladdress, a.stelephones, a.semail, a.binvoiceneeded FROM attendees a JOIN assistancerecord ar ON ar.iattendeeid = a.iattendeeid WHERE ar.ieventid = 1")

        Dim lbl As Label
        Dim st As Integer = 0
        Dim actual As String

        dgUsers.DataBind()

        For st = 0 To dgUsers.Items.Count - 1

            actual = dgUsers.Items(st).Cells(4).Text

            lbl = dgUsers.Items(st).FindControl("lblFactura")

            If actual = "1" Then
                lbl.Text = "S&iacute;"
            Else
                lbl.Text = "No"
            End If

        Next

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

            dgUsers.DataSource = getSQLQueryAsDataset("SELECT DISTINCT a.iattendeeid, a.sfullname, a.sfulladdress, a.stelephones, a.semail, a.binvoiceneeded FROM attendees a JOIN assistancerecord ar ON ar.iattendeeid = a.iattendeeid WHERE ar.ieventid = 1 AND (a.sfullname LIKE '%" & txtNP.Text & "%' OR a.sfulladdress LIKE '%" & txtNP.Text & "%' OR a.stelephones LIKE '%" & txtNP.Text & "%' OR a.semail LIKE '%" & txtNP.Text & "%' OR a.scompanyname LIKE '%" & txtNP.Text & "%' OR a.scompanyfulladdress LIKE '%" & txtNP.Text & "%' OR a.scompanytelephones LIKE '%" & txtNP.Text & "%' OR a.srfc LIKE '%" & txtNP.Text & "%' OR a.sjobtitle LIKE '%" & txtNP.Text & "%')")

            Dim lbl As Label
            Dim st As Integer = 0
            Dim actual As String

            dgUsers.DataBind()

            For st = 0 To dgUsers.Items.Count - 1

                actual = dgUsers.Items(st).Cells(4).Text

                lbl = dgUsers.Items(st).FindControl("lblFactura")

                If actual = "1" Then
                    lbl.Text = "S&iacute;"
                Else
                    lbl.Text = "No"
                End If

            Next

        End If

    End Sub


    Private Sub cmdShowbyNP_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cmdShowbyNP.Click

        cmdShowAll.BackColor = System.Drawing.Color.Lavender
        cmdShowbyNP.BackColor = System.Drawing.Color.LightSteelBlue
        pnlSearchName.Visible = True

    End Sub


    Private Sub dgUsers_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles dgUsers.ItemCommand

        If e.CommandName = "Edit" Then

            Dim newLoc As String
            newLoc = "modifyPart.aspx?target=" & dgUsers.DataKeys(e.Item.ItemIndex)
            Response.Redirect(newLoc)

        End If

        If e.CommandName = "Delete" Then

            Dim comando1 As String
            Dim comando2 As String
            comando1 = "DELETE FROM attendees WHERE iattendeeid = " & dgUsers.DataKeys(e.Item.ItemIndex)
            comando2 = "DELETE FROM assistancerecord WHERE iattendeeid = " & dgUsers.DataKeys(e.Item.ItemIndex) & " AND ieventid = 1"
            executeSQLQuery(comando1)
            executeSQLQuery(comando2)

            Call cmdShowAll_Click(Me, Nothing)

        End If

    End Sub


End Class