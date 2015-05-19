<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="modifyNews.aspx.vb" Inherits="intellego.modifyNews" %>

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
	<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	
		<form id="form1" method="post" runat="server">
		
			<div id="todo" align="center">
			
				<asp:RequiredFieldValidator id="RequiredFieldValidator1" style="z-index: 116; left: 392px; position: absolute; top: 192px"
					runat="server" ErrorMessage="Es necesario un título" ControlToValidate="txtTitle">*</asp:RequiredFieldValidator>
				<asp:RequiredFieldValidator id="RequiredFieldValidator3" style="z-index: 118; left: 392px; position: absolute; top: 232px"
					runat="server" ErrorMessage="Es necesario describir la noticia" ControlToValidate="txtDescription">*</asp:RequiredFieldValidator>
				<div id="wrap" align="center">
					
					
					<div id="header-banner">
						<img src="images/logointellego.gif" alt="" style="z-index: 101; left: 0px; position: relative; top: 26px" align="left" /></div>
					
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
								<a href="conferencias.aspx">Conferencias anteriores </a>
							</li>
						</ul>
					</div>
					
					<div id="buffer"></div>
					
					<div id="left-column-first"><img class="img-left-nav" alt="" src="images/img_left_nav.jpg" />
					</div>
					
					<div id="middle-column" align="left">
					
						<div class="middle-column-title-standard">
							<div id="google_translate_element"></div>
							Administración de Noticias
						</div>
						
						<div id="tablanews" style="width: 416px; position: relative; height: 488px" >
						
						    <br />
							<asp:HyperLink id="HyperLink1" style="z-index: 104; left: 304px; position: absolute; top: 8px" runat="server" Width="107px" Font-Size="XX-Small" NavigateUrl="adminMenu.aspx" Font-Names="Verdana">Regresar a Menú</asp:HyperLink>
							<asp:Label id="lblHeader" style="z-index: 128; left: 8px; position: absolute; top: 32px" runat="server"
							Font-Size="X-Small" CssClass="Headertabla" Height="18px" Width="392px" BackColor="Navy"
							ForeColor="White" Font-Bold="True">Modificar Noticia</asp:Label>
							
							<asp:ValidationSummary id="ValidationSummary1" style="z-index: 120; left: 136px; position: absolute; top: 360px"
							runat="server" Font-Names="Verdana" Font-Size="XX-Small"></asp:ValidationSummary>
							<asp:Label id="lblErr1" style="z-index: 123; left: 24px; position: absolute; top: 192px" runat="server"
							Font-Size="XX-Small" CssClass="Centerlabel" Width="88px" BorderStyle="Solid" BorderWidth="1px"
							BorderColor="Red" ForeColor="Red" visible="False">No se pudo guardar los datos. Por favor, espere un momento e intente de nuevo.</asp:Label>
							<asp:Label id="lblTitle" style="z-index: 126; left: 24px; position: absolute; top: 64px"
							runat="server" Font-Size="XX-Small" CssClass="Labellarge" Height="16px" Width="83px"> Título: </asp:Label>
							<asp:TextBox id="txtTitle" style="z-index: 127; left: 120px; position: absolute; top: 64px"
							tabIndex="1" runat="server" Font-Size="XX-Small" Width="263px" BorderStyle="Solid" BorderWidth="1px"
							BorderColor="Navy" Font-Names="Verdana" MaxLength="100"></asp:TextBox>
							<asp:Label id="lblDescription" style="z-index: 125; left: 24px; position: absolute; top: 104px" runat="server"
							Font-Size="XX-Small" CssClass="Labellarge" Height="8px" Width="89px">Descripción:</asp:Label>
							<asp:TextBox id="txtDescription" style="z-index: 124; left: 120px; position: absolute; top: 104px" tabIndex="3"
							runat="server" Font-Size="XX-Small" Height="188px" Width="261px" BorderStyle="Solid" BorderWidth="1px"
							BorderColor="Navy" Font-Names="Verdana" MaxLength="500" TextMode="MultiLine"></asp:TextBox>
							<asp:Label id="Label1" style="z-index: 114; left: 24px; position: absolute; top: 136px" runat="server" Font-Size="XX-Small" CssClass="Labellarge" Height="38px" Width="80px" ForeColor="Red">La descripción acepta código html</asp:Label>
							
							<asp:Panel id="pnlMainInfo" style="z-index: 101; left: 8px; position: absolute; top: 32px"
							runat="server" Height="368px" Width="392px" BorderStyle="Solid" BorderWidth="2px" BorderColor="Navy"
							BackColor="Lavender">
							</asp:Panel>
								
							<asp:Button id="btnSave" style="z-index: 121; left: 224px; position: absolute; top: 320px" tabIndex="9"
							runat="server" CssClass="Button" Width="164px" BorderStyle="Solid" Text="Guardar" BorderColor="MidnightBlue"></asp:Button>
							<asp:Button id="btnCancel" style="z-index: 122; left: 40px; position: absolute; top: 320px"
							tabIndex="10" runat="server" CssClass="Button" Height="23px" Width="164px" BorderStyle="Solid"
							Text="Cancelar" BorderColor="DarkBlue" CausesValidation="False"></asp:Button>
							
						</div>
					</div> 
					<div id="right-column">
						
						<div class="right-column-box-standard" id="loginPart" style="width: 13.8em; height: 78px">
						
							<div class="right-column-title-grey">
							    Bienvenido Admin
							</div>
							
							<p>
							
								<br />
								<asp:Button id="btnLogout" runat="server" Width="112px" Height="16px" Font-Size="XX-Small"
								Font-Names="Verdana" BorderStyle="Solid" BorderColor="DarkBlue" BorderWidth="1px" tabIndex="4" Text="Logout">
								</asp:Button>
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
