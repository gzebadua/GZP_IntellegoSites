<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="conferencias.aspx.vb" Inherits="intellego.conferencias" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">

		<title>Intellego - Grupo de Ingeniería en Industrias Alimentarias</title>
		<link href="css/style.css" type="text/css" rel="stylesheet" />
		<style type="text/css">
		    .style1  
		    {
		    	font-size: 12px; 
		    	font-family: Verdana;
		    }
		</style>
		<script type="text/javascript">
		    var isIE4up = (document.all) ? 1 : 0;
		    var isIE5 = (isIE4up && navigator.appVersion.indexOf("MSIE 5") != -1) ? 1 : 0;
		    var isIE6 = (isIE4up && navigator.appVersion.indexOf("MSIE 6") != -1) ? 1 : 0;
		    function validateInput(e, strPattern) {
		        var chr = (isIE4up || isIE6 || isIE6) ? e.keyCode : e.which;
		        var ch = String.fromCharCode(chr);

		        if (chr != 13 && chr != 8) {
		            var re = new RegExp(strPattern);

		            if (ch.search(re) == -1) {
		                if (isIE4up || isIE6 || isIE6) {
		                    e.returnValue = false;
		                }
		                else {
		                    e.preventDefault();
		                }
		            }
		        }
		    }
		</script>
		<script type="text/javascript">
		    function gaia_setFocus() {
		        var f = null;
		        if (document.getElementById) {
		            f = document.getElementById("form1");
		            if (f.txtUsername.value == null || f.txtUsername.value == "") {
		                f.txtUsername.focus();
		            } else {
		                f.txtPassword.focus();
		            }
		        }
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
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="gaia_setFocus();">

	<form id="form1" runat="server">
	
		<div id="todo" align="center">
			
			<div id="wrap" align="center">
				
				<div id="header-banner">
					<img src="images/logointellego.gif" alt="" style="z-index: 101; left: 0px; position: relative; top: 26px" align="left" />
				</div>
				
				<div id="header-nav-bottom">
					<ul>
						<li>
							<a href="index.aspx">Home</a>
						</li>
						<li>
							<a href="nosotros.aspx">Sobre Nosotros </a>
						</li>
						<li>
							<a href="fotos.aspx">Galer&iacute;a de Fotos </a>
						</li>
						<li>
							<a class="selected" href="conferencias.aspx">Conferencias anteriores </a>
						</li>
					</ul>
				</div>
				
				<div id="buffer"></div>
				
				<div id="left-column-first">
				    <img class="img-left-nav" alt="" src="images/img_left_nav.jpg" />
				</div>
				
				<div id="middle-column" align="left">
				
					<div class="middle-column-title-standard">
						<div id="google_translate_element"></div>
						Conferencias
					</div>
					
					<div style="position: relative; height: 464px; text-align: left">
					    
					    <br />
						<asp:Panel id="Panel1" runat="server" Height="266px" Width="368px" style="z-index: 101; left: 0px; position: absolute; top: 8px">
						    <br />
						    <ul>
							    <li>
							        Cata de Vinos y Quesos
							    </li>
							    <br />
							    <br />
							    <li>
							        Emulsiones: <a href="emulsiones/index.html" target="_blank">Haz click aquí</a>
							    </li>
							</ul>
							<p></p>
							<p></p>
						</asp:Panel>
						
					</div>
					
				</div>
				
				<div id="right-column">
				
					<div class="right-column-box-standard">
					
						<div class="right-column-title-grey">
						    Login
						</div>
						
						<p>
						    <asp:Label id="lblUsuario" runat="server" Height="24px" Width="84px" Font-Names="Arial" Font-Size="XX-Small" CssClass="Labellarge">Usuario:</asp:Label>
						    <asp:TextBox id="txtUsername" runat="server" Font-Names="Verdana" Font-Size="XX-Small" CssClass="Txtbox" Width="120px" tabIndex="1" ToolTip="Please insert your username and password to log in"
								MaxLength="10" BorderStyle="Inset" onkeypress="validateInput(event,'[a-zA-z0-9 ñÑáéíóúäëïöüâêîôûàèìòùÁÉÍÓÚÄËÏÖÜÀÈÌÒÙÂÊÎÔÛ-]')">
								</asp:TextBox>
								<asp:Label id="lblPassword" runat="server" Height="24px" Width="69px" Font-Names="Arial" Font-Size="XX-Small" CssClass="Labellarge">Password:</asp:Label>
								<asp:TextBox id="txtPassword" tabIndex="2" runat="server" Width="112px" MaxLength="12" TextMode="Password" Font-Names="Verdana" Font-Size="XX-Small" CssClass="Txtbox" BorderStyle="Inset" ToolTip="Please insert a valid password to log in. Passwords are CASE SENSITIVE" onkeypress="validateInput(event,'[a-zA-z0-9 ñÑáéíóúäëïöüâêîôûàèìòùÁÉÍÓÚÄËÏÖÜÀÈÌÒÙÂÊÎÔÛ-]')">
								</asp:TextBox>
							<br />
							<br />
							<asp:Button id="btnLogin" runat="server" Height="16px" Width="112px" Font-Names="Verdana" Font-Size="XX-Small" BorderStyle="Solid" BorderWidth="1px" BorderColor="DarkBlue" tabIndex="4" Text="Login">
							</asp:Button>
							<asp:Label id="lblWrongUP" Height="16px" Width="122px" runat="server" Font-Names="Arial" Font-Size="XX-Small" ForeColor="Red" Visible="False">Combinación Usuario/Contrase&ntilde;a incorrecta. Intenta nuevamente.</asp:Label>
							<asp:ValidationSummary id="ValidationSummary1" runat="server" Height="25px" Width="120px" Font-Names="Arial" Font-Size="XX-Small">
							</asp:ValidationSummary>
						</p>
						
					</div>
					
					<div class="right-column-box-standard">
					
						<div class="right-column-title-grey">
						    Patrocinadores
						</div>
						
						<div>
						
							<p class="style1" align="center">
							    <br />
							    <a href="http://www.telcel.com" target="_blank">
							        <img height="28" width="120" alt="Telcel - Todo México es Territorio Telcel" src="images/logotelcel.gif" border="0" />
							        </a>
						        <br />
							    <br />
							    <a href="http://www.qro.itesm.mx" target="_blank">
							        <img height="68" width="100" alt="Tec de Monterrey Campus Querétaro" src="images/logotec.gif" align="middle" border="0" />
							    </a>
							</p>
							
							<p class="style1" align="center">
							    
							    <br />
							    <a href="http://www.malvern.co.uk/home/index.htm" target="_blank">
									<img height="71" width="110" alt="Malvern Instruments" src="images/malvern.gif" border="0" />
								</a>
								<br />
								<br />
								<br />
								<a href="http://www.alimentariaonline.com" target="_blank">
									<img height="44" width="120" alt="Industria Alimentaria Online" src="images/Alimentariaonline.jpg" align="middle" border="0" />
								</a>
								<br />
								<br />
								
							</p>
							
						</div>
						
					</div>
					
					<div class="right-column-box-standard">
					
						<div class="right-column-title-grey">
						    Preguntas
						</div>
						<p>
						    Cont&aacute;ctanos al correo:
						</p>
						<p>
						    <a href="mailto:intellego.qro@itesm.mx" target="_blank">intellego.qro@itesm.mx</a>
						</p>
					
					</div>
					
				</div>
				
				<div id="footer">
				    Intellego ITESM Campus Quer&eacute;taro
				</div>
				
			</div>
			
		</div>
		
	</form>
		
</body>
	
</html>
