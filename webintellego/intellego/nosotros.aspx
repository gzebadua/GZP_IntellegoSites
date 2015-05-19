<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="nosotros.aspx.vb" Inherits="intellego.nosotros" %>

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
							<a class="selected" href="nosotros.aspx">Sobre Nosotros </a>
						</li>
						<li>
							<a href="fotos.aspx">Galer&iacute;a de Fotos </a>
						</li>
						<li>
							<a href="conferencias.aspx">Conferencias anteriores </a>
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
					
					<div style="width: 386px; position: relative; height: 1611px; text-align: left">
					
					    <br />
						<asp:Panel id="Panel1" runat="server" Height="266px" Width="368px" style="z-index: 101; left: 0px; position: absolute; top: 8px" >
							
							<p class="style2" align="left">
							    Nosotros somos el grupo estudiantil INTELLEGO, 
								que representamos a la carrera de Ingenier&iacute;a en Industrias Alimentarias, con 
								m&aacute;s de 200 alumnos.
							</p>
							<p></p>
							<p class="style2" align="left">
							    Nuestro objetivo y misi&oacute;n es crear espacios de 
								aprendizaje practico para alumnos de la carrera de IIA en temas y t&oacute;picos que 
								no se vean tan a fondo en el plan acad&eacute;mico de la carrera, y así desarrollar 
								una comunicaci&oacute;n e interacci&oacute;n con el &aacute;rea empresarial de nuestro &aacute;mbito 
								profesional.
							</p>
							<p class="style2" align="left">
							    Queremos que seamos un grupo con valor reconocido 
								entre la comunidad de Alimentos, en general de las direcciones, empresas y 
								grupos estudiantiles; logrando ser as&iacute; una herramienta m&aacute;s de aprendizaje para 
								los alumnos durante su carrera en Ingenier&iacute;a en Industrias Alimentarias.
							</p>
							<p class="style2" align="left">
							    As&iacute; entonces, nos presentamos ante ustedes como 
								miembros de Intellego y organizadores de esta conferencia:
								<br />
								<br />
								<br />
							</p>
							<table cellspacing="0" cellpadding="0" width="368" align="center" border="0">
								<tr>
									<td style="width: 170px">
										<div align="center">
										    <img src="images/mariale.jpg" align="middle" alt="" />
										</div>
									</td>
									<td style="font-weight: normal; font-size: 10px; line-height: normal; font-style: normal; font-variant: normal">
									    Mar&iacute;a Alejandra V&aacute;zquez Betancourt<br />
										Presidenta<br />
										6to semestre de IIA
									</td>
								</tr>
							</table>
							<br />
							<br />
							<table cellspacing="0" cellpadding="0" width="368" align="center" border="0">
								<tr>
									<td>
										<div align="center">
										    <img src="images/memo.jpg" align="middle" alt="" />
										</div>
									</td>
									<td style="font-weight: normal; font-size: 10px; line-height: normal; font-style: normal; font-variant: normal">
									    Guillermo Chac&oacute;n<br />
										Vicepresidente<br />
										5to semestre de IIA
									</td>
								</tr>
							</table>
							<br />
							<br />
							<table cellspacing="0" cellpadding="0" width="368" align="center" border="0">
								<tr>
									<td>
										<div align="center">
										    <img src="images/quedma.jpg" align="middle" alt="" />
										</div>
									</td>
									<td style="font-weight: normal; font-size: 10px; line-height: normal; font-style: normal; font-variant: normal">
									    Quedma Sara&iacute; Vega<br />
										Secretaria<br />
										6to semestre de IIA
									</td>
								</tr>
							</table>
							<br />
							<br />
							<table cellspacing="0" cellpadding="0" width="368" align="center" border="0">
								<tr>
									<td>
										<div align="center">
										    <img src="images/alexandra.jpg" align="middle" alt="" />
										</div>
									</td>
									<td style="font-weight: normal; font-size: 10px; line-height: normal; font-style: normal; font-variant: normal">
									    Alexandra Cardenas<br />
										Tesorera<br />
										5to semestre de IIA
									</td>
								</tr>
							</table>
							<br />
							<br />
							<table cellspacing="0" cellpadding="0" width="368" align="center" border="0">
								<tr>
									<td style="width: 167px">
										<div align="center">
										    <img src="images/glafir.jpg" align="middle" alt="" />
										</div>
									</td>
									<td style="font-weight: normal; font-size: 10px; line-height: normal; font-style: normal; font-variant: normal">
									    Glafir Hernandez<br />
										Encargado de Participantes<br />
										3er semestre de IIA
									</td>
								</tr>
							</table>
							<br />
							<br />
							<table cellspacing="0" cellpadding="0" width="368" align="center" border="0">
								<tr>
									<td>
										<div align="center">
										    <img src="images/laura.jpg" align="middle" alt="" />
										</div>
									</td>
									<td style="font-weight: normal; font-size: 10px; line-height: normal; font-style: normal; font-variant: normal">
									    Laura Castillo<br />
										Log&iacute;stica<br />
										6to semestre de IIA
									</td>
								</tr>
							</table>
							<br />
							<br />
							<table cellspacing="0" cellpadding="0" width="368" align="center" border="0">
								<tr>
									<td style="width: 168px">
										<div align="center">
										    <img src="images/arely.jpg" align="middle" alt="" />
										</div>
									</td>
									<td style="font-weight: normal; font-size: 10px; line-height: normal; font-style: normal; font-variant: normal">
									    Arely Rodr&iacute;guez<br />
										Encargada de Contenido<br />
										4to semestre de IIA
									</td>
								</tr>
							</table>
							<br />
							<br />
							<table cellspacing="0" cellpadding="0" width="368" align="center" border="0">
								<tr>
									<td>
										<div align="center">
										    <img src="images/ana.jpg" align="middle" alt="" />
										</div>
									</td>
									<td style="font-weight: normal; font-size: 10px; line-height: normal; font-style: normal; font-variant: normal">
									    Ana Gloria Ramos<br />
										Patrocinios<br />
										6to semestre de IIA
									</td>
								</tr>
							</table>
							<br />
							<br />
							<table cellspacing="0" cellpadding="0" width="368" align="center" border="0">
								<tr>
									<td style="width: 169px">
										<div align="center">
										    <img src="images/maria.jpg" align="middle" alt="" />
										</div>
									</td>
									<td style="font-weight: normal; font-size: 10px; line-height: normal; font-style: normal; font-variant: normal">
									    Mar&iacute;a Fernanda Mellado<br />
										Material Cursos<br />
										2do semestre de IIA
									</td>
								</tr>
							</table>
							<br />
							<br />
							<table cellspacing="0" cellpadding="0" width="368" align="center" border="0">
								<tr>
									<td>
										<div align="center">
										    <img src="images/maura.jpg" align="middle" alt="" />
									    </div>
									</td>
									<td style="font-weight: normal; font-size: 10px; line-height: normal; font-style: normal; font-variant: normal">
									    Maura Anais Zarco<br />
										Publicidad<br />
										6to semestre de IIA
									</td>
								</tr>
							</table>
							<br />
							<br />
							<table cellspacing="0" cellpadding="0" width="368" align="center" border="0">
								<tr>
									<td style="width: 168px">
										<div align="center">
										    &nbsp;
										</div>
									</td>
									<td style="font-weight: normal; font-size: 10px; line-height: normal; font-style: normal; font-variant: normal">
									    Dr. C&eacute;sar Vega<br />
										Responsable de contenido t&eacute;cnico
										<p></p>
										<p></p>
									</td>
								</tr>
							</table>
							<p>&nbsp;</p>
							
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