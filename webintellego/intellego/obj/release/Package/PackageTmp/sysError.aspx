<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="sysError.aspx.vb" Inherits="intellego.sysError" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
	<title>Oops - Error de Sistema</title>
	<meta http-equiv="Refresh" content="3;URL=index.aspx" />
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
<body topmargin="0" leftmargin="0" background="images/background.png">
	<form id="form1" method="post" runat="server">
		<img style="z-index: 100; left: 24px; position: absolute; top: 144px" src="images/bits.gif" alt="" />
		<asp:Label id="lblServer" style="z-index: 101; left: 160px; position: absolute; top: 152px"
			runat="server" Font-Names="Verdana" Font-Size="Medium" Font-Bold="True" ForeColor="Navy">Ooops!</asp:Label><div id="google_translate_element"></div>
		<asp:Label id="lblWhat" style="z-index: 102; left: 176px; position: absolute; top: 190px" runat="server"
			Width="593px" Height="40px" Font-Size="X-Small">Si estás viendo esta página es probablemente porque se produjo un error. Tu acción puede que sí se haya realizado. Vuelve a loggearte para verificar.</asp:Label>
		<asp:Label id="Label2" style="z-index: 105; left: 176px; position: absolute; top: 304px" runat="server"
			Width="586px" Height="24px" Font-Size="X-Small">PS: Esta página se redireccionará automáticamente en 3 segundos a la página principal</asp:Label>
		</form>
</body>
</html>