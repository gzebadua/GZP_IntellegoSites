<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="done.aspx.vb" Inherits="intellego.done" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head id="Head1" runat="server">
	<title>done</title>
	<meta http-equiv="Refresh" content="4;url=javascript:itsall();" />
	<script type="text/javascript">
        function itsall() {
            window.close();
	    }
	</script>
	<script type="text/javascript">
        function googleTranslateElementInit() {
          new google.translate.TranslateElement({
            pageLanguage: 'es',
            layout: google.translate.TranslateElement.InlineLayout.SIMPLE
          }, 'google_translate_element');
        }
    </script>
    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

	<form id="form1" method="post" runat="server">
	    <div style="text-align:center;">
		    <img src="images/emulsiones.jpg" alt="" />
		    <br />
		    <br />
		    <div id="google_translate_element"></div>
		    <br />
		    <br />
		    <br />
		    <asp:Label id="Label1" runat="server" Font-Names="Arial" Font-Size="X-Small">
			    Tus datos han sido grabados correctamente. Ahora puedes cerrar esta ventana o esperar 4 segundos y se cerrará automáticamente.
		    </asp:Label>
		</div>
	</form>
	
</body>
</html>
