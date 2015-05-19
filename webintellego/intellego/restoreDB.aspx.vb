Public Partial Class restoreDB
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        executeSQLQuery("TRUNCATE TABLE news")
        executeSQLQuery("REPLACE INTO news VALUES(1, 'DB Restore', 'The database has been restored succesfully, Welcome!', 20110708, '12:00:00')")
        executeSQLQuery("REPLACE INTO news VALUES(2, 'Bienvenidos al sitio de la sociedad estudiantil Intellego', '<br />Somos estudiantes de la Ingeniería en Industrias Alimentarias y estamos entusiasmados de llevar a ustedes las conferencias de Emulsiones.<br /><br />Si desean el material audiovisual que se mostr&oacute; en las conferencias, pueden descargarlo entrando con el siguiente usuario y contrase&ntilde;a:<br /><br />Usuario:invitado<br />Contrase&ntilde;a:invitado<br /><br />', 20110708, '12:00:52')")

        executeSQLQuery("TRUNCATE TABLE assistancerecord")
        executeSQLQuery("REPLACE INTO assistancerecord VALUES(1, 1)")
        executeSQLQuery("REPLACE INTO assistancerecord VALUES(2, 1)")
        executeSQLQuery("REPLACE INTO assistancerecord VALUES(3, 1)")

        executeSQLQuery("TRUNCATE TABLE attendees")
        executeSQLQuery("REPLACE INTO attendees VALUES(1, 'Omar Ramos', 'Queretaro, Qro', '5551234567', '<a href=mailto:dummy@email.com>dummy@email.com</a>', 1, 'DUMMY TAX ID', 'Dummy Inc', 'Queretaro, Qro', '5551234567', 'Manager')")
        executeSQLQuery("REPLACE INTO attendees VALUES(2, 'Maria Teresa Garza', 'Queretaro, Qro', '5557654321', '<a href=mailto:dummy2@email.com>dummy2@email.com</a>', 0, '', '', '', '', '')")
        executeSQLQuery("REPLACE INTO attendees VALUES(3, 'Alaide Baptista García', 'Boston, MA', '555555555', '<a href=mailto:dummy3@email.com>dummy3@email.com</a>', 0, '', '', '', '', '')")

        Response.Redirect("index.aspx")

    End Sub

End Class