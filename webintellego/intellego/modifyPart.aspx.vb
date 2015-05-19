Public Partial Class modifyPart
    Inherits System.Web.UI.Page

    Dim chequeo As String = ""


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            If Request.QueryString("target") = "" Then
                Response.Redirect("displayAsist.aspx")
            Else

                chequeo = getSQLQueryAsDataset("SELECT iattendeeid FROM attendees WHERE iattendeeid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)

                If chequeo <> "" Then

                    Dim Paso1Email As String

                    txtNombre.Text = getSQLQueryAsDataset("SELECT sfullname FROM attendees WHERE iattendeeid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)
                    txtDireccion.Text = getSQLQueryAsDataset("SELECT sfulladdress FROM attendees WHERE iattendeeid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)
                    txtTel.Text = getSQLQueryAsDataset("SELECT stelephones FROM attendees WHERE iattendeeid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)

                    Paso1Email = getSQLQueryAsDataset("SELECT semail FROM attendees WHERE iattendeeid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)
                    Paso1Email = Paso1Email.Substring(Paso1Email.IndexOf(">") + 1, (Paso1Email.LastIndexOf(">") - Paso1Email.IndexOf(">")))
                    txtEmail.Text = Paso1Email.Replace("</a>", "")
                    RVEmail.Enabled = True

                    Dim checkIfInvoiceNeeded As String

                    checkIfInvoiceNeeded = getSQLQueryAsDataset("SELECT binvoiceneeded FROM attendees WHERE iattendeeid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)

                    If checkIfInvoiceNeeded = "1" Then

                        chkFactura.Checked = True
                        pnlCompanyInfo.Visible = True

                        txtCompanyName.Text = getSQLQueryAsDataset("SELECT scompanyname FROM attendees WHERE iattendeeid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)
                        txtRFC.Text = getSQLQueryAsDataset("SELECT srfc FROM attendees WHERE iattendeeid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)
                        txtPuesto.Text = getSQLQueryAsDataset("SELECT sjobtitle FROM attendees WHERE iattendeeid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)
                        txtCompanyAddress.Text = getSQLQueryAsDataset("SELECT scompanyfulladdress FROM attendees WHERE iattendeeid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)
                        txtCompanyTels.Text = getSQLQueryAsDataset("SELECT scompanytelephones FROM attendees WHERE iattendeeid = " & Request.QueryString("target")).Tables(0).Rows(0).Item(0)

                    Else
                        chkFactura.Checked = False
                        pnlCompanyInfo.Visible = False
                    End If


                Else

                    Response.Redirect("displayAsist.aspx")

                End If

            End If

        End If


    End Sub


    Private Sub chkFactura_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles chkFactura.CheckedChanged

        pnlCompanyInfo.Visible = chkFactura.Checked
        rs4.Enabled = chkFactura.Checked
        rs5.Enabled = chkFactura.Checked
        rs6.Enabled = chkFactura.Checked
        rs7.Enabled = chkFactura.Checked

        If chkFactura.Checked = False Then

            txtCompanyName.Text = ""
            txtRFC.Text = ""
            txtPuesto.Text = ""
            txtCompanyAddress.Text = ""
            txtCompanyTels.Text = ""

        End If

    End Sub

    Private Sub btnClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClear.Click

        txtNombre.Text = ""
        txtDireccion.Text = ""
        txtTel.Text = ""
        txtEmail.Text = ""

        txtCompanyName.Text = ""
        txtRFC.Text = ""
        txtPuesto.Text = ""
        txtCompanyAddress.Text = ""
        txtCompanyTels.Text = ""

    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click

        Dim valida1 As Boolean

        Dim necesitaFactura As String
        Dim nombreCia As String

        If txtEmail.Text = "" Then
            RVEmail.Enabled = False
        End If

        txtNombre.Text = txtNombre.Text
        txtDireccion.Text = txtDireccion.Text
        txtTel.Text = txtTel.Text
        txtEmail.Text = txtEmail.Text
        txtNombre.Text = txtNombre.Text.Trim()
        txtNombre.Text = txtNombre.Text.Replace("'", "")
        txtNombre.Text = txtNombre.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")
        txtDireccion.Text = txtDireccion.Text.Trim()
        txtDireccion.Text = txtDireccion.Text.Replace("'", "")
        txtDireccion.Text = txtDireccion.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")
        txtTel.Text = txtTel.Text.Trim()
        txtTel.Text = txtTel.Text.Replace("'", "")
        txtTel.Text = txtTel.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")
        txtEmail.Text = txtEmail.Text.Trim()

        txtCompanyAddress.Text = txtCompanyAddress.Text.Trim()
        txtCompanyAddress.Text = txtCompanyAddress.Text.Replace("'", "")
        txtCompanyAddress.Text = txtCompanyAddress.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")
        txtCompanyTels.Text = txtCompanyTels.Text.Trim()
        txtCompanyTels.Text = txtCompanyTels.Text.Replace("'", "")
        txtCompanyTels.Text = txtCompanyTels.Text.Trim("'", "@", "´", "¨", "*", "+", "~", "{", "[", "}", "]", "^", "`", ";", ",", "?", "¿", "\", "¡", "|", "°", "#", "$", "%", "&", "&", "/", "(", ")", "<", ">", "!")

        nombreCia = avoidMySQLInjections(txtCompanyName.Text).Replace("''", "")

        If chkFactura.Checked = True Then
            necesitaFactura = "1"
        Else
            necesitaFactura = "0"
        End If

        valida1 = executeSQLQuery("UPDATE attendees SET sfullname='" & txtNombre.Text & "', sfulladdress = '" & txtDireccion.Text & "', stelephones = '" & txtTel.Text & "', semail = '<a href=mailto:" & txtEmail.Text & ">" & txtEmail.Text & "</a>', binvoiceneeded = " & necesitaFactura & ", scompanyname='" & txtCompanyName.Text & "', sjobtitle='" & txtPuesto.Text & "', srfc='" & txtRFC.Text & "', scompanyfulladdress = '" & txtCompanyAddress.Text & "', scompanytelephones = '" & txtCompanyTels.Text & "' WHERE iattendeeid = " & Request.QueryString("target"))

        If Not valida1 Then
            lblError.Visible = True
            Exit Sub
        End If

        Response.Redirect("displayAsist.aspx")

    End Sub

End Class