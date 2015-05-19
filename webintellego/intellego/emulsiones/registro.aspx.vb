Public Partial Class registro
    Inherits System.Web.UI.Page

    Dim bInvoiceNeeded As Boolean = False


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Private Sub CheckBox1_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles chkFactura.CheckedChanged

        bInvoiceNeeded = chkFactura.Checked
        pnlCompanyInfo.Visible = bInvoiceNeeded
        rs4.Enabled = bInvoiceNeeded
        rs5.Enabled = bInvoiceNeeded
        rs6.Enabled = bInvoiceNeeded
        rs7.Enabled = bInvoiceNeeded

    End Sub


    Private Sub btnClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClear.Click

        'It basically loads the page again...
        Dim path() As String = Me.Request.FilePath.Split("/")
        Me.Response.Redirect(path(path.Length - 1))

    End Sub


    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click

        btnSave.Enabled = False

        Dim nombreCia As String
        Dim valida1 As Boolean = True
        Dim valida2 As Boolean = True
        Dim identificador As String

        If txtEmail.Text = "" Then
            RVEmail.Enabled = False
        End If

        txtEmail.Text = txtEmail.Text.Trim()
        txtNombre.Text = txtNombre.Text.Trim()
        txtNombre.Text = txtNombre.Text.Replace("'", "")
        txtNombre.Text = txtNombre.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")
        txtDireccion.Text = txtDireccion.Text.Trim()
        txtDireccion.Text = txtDireccion.Text.Replace("'", "")
        txtDireccion.Text = txtDireccion.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")
        txtTel.Text = txtTel.Text.Trim()
        txtTel.Text = txtTel.Text.Replace("'", "")
        txtTel.Text = txtTel.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")

        txtCompanyName.Text = txtCompanyName.Text.Trim()
        txtCompanyName.Text = txtCompanyName.Text.Replace("'", "")
        txtCompanyName.Text = txtCompanyName.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")

        nombreCia = avoidMySQLInjections(txtCompanyName.Text)

        txtRFC.Text = txtRFC.Text.Trim()
        txtRFC.Text = txtRFC.Text.Replace("'", "")
        txtRFC.Text = txtRFC.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")
        txtPuesto.Text = txtPuesto.Text.Trim()
        txtPuesto.Text = txtPuesto.Text.Replace("'", "")
        txtPuesto.Text = txtPuesto.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")
        txtCompanyAddress.Text = txtCompanyAddress.Text.Trim()
        txtCompanyAddress.Text = txtCompanyAddress.Text.Replace("'", "")
        txtCompanyAddress.Text = txtCompanyAddress.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")
        txtCompanyTels.Text = txtCompanyTels.Text.Trim()
        txtCompanyTels.Text = txtCompanyTels.Text.Replace("'", "")
        txtCompanyTels.Text = txtCompanyTels.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")


        identificador = getSQLQueryAsDataset("SELECT IF(MAX(iattendeeid)+1 IS NULL, 1, MAX(iattendeeid)+1) FROM attendees").Tables(0).Rows(0).Item(0)

        If chkFactura.Checked = True Then

            'si necesita facturación
            executeSQLQuery("INSERT INTO attendees VALUES(" & identificador & ", '" & txtNombre.Text & "','" & txtDireccion.Text & "','" & txtTel.Text & "','<a href=mailto:" & txtEmail.Text & ">" & txtEmail.Text & "</a>', 1, '" & txtRFC.Text & "','" & txtCompanyName.Text & "','" & txtCompanyAddress.Text & "','" & txtCompanyTels.Text & "','" & txtPuesto.Text & "')")

            executeSQLQuery("INSERT INTO assistancerecord VALUES(" & identificador & ", 1)")

        Else

            'si no necesita facturación

            executeSQLQuery("INSERT INTO attendees VALUES(" & identificador & ", '" & txtNombre.Text & "','" & txtDireccion.Text & "','" & txtTel.Text & "','<a href=mailto:" & txtEmail.Text & ">" & txtEmail.Text & "</a>', 0, '','','','','')")

            executeSQLQuery("INSERT INTO assistancerecord VALUES(" & identificador & ", 1)")

        End If

        Response.Redirect("done.aspx")

    End Sub


End Class